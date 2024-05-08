
import sublime, sublime_plugin
import os, re
from subprocess import Popen
from ctypes import *


os_path_isfile     = os.path.isfile
os_path_dirname    = os.path.dirname
os_path_expanduser = os.path.expanduser
os_path_join       = os.path.join
RgX_search         = re.compile('(AutoHotkey|AHK|Plain text)', re.I).search


def plugin_loaded():
    g                               = globals()
    ahk_exe_path_get                = sublime.load_settings("AutoHotkey.sublime-settings").get
    g['compile_out_dir']            = os.environ['USERPROFILE'] + '\\Desktop'
    g['compiler_executables']       = ahk_exe_path_get("Ahk2ExePath")
    g['interpreter_executables']    = ahk_exe_path_get("AutoHotKeyExePath")


#---------------------------------------------------------------
    # The ahkrun command is called as target by AutoHotkey.sublime-build

class ahkrun(sublime_plugin.WindowCommand):
    def run(self, version = "default"):

        AutoHotKeyExePath = interpreter_executables[version]

        # Also try old settings format where path is stored as a named-key in a dictionary.
        if not os_path_isfile(AutoHotKeyExePath):
            print("AutoHotkey ahkexec.py run(): Trying default version, because could not find AutoHotKeyExePath for version=" + str(version))
            AutoHotKeyExePath = interpreter_executables["default"]

        # Also try old settings format where path is stored as a list of paths
        if not os_path_isfile(AutoHotKeyExePath):
            print("AutoHotkey ahkexec.py run(): Trying string list (without dictionary key-pairs old format), because could not find AutoHotKeyExePath for version=" + str(version) + " or version=default")
            AutoHotKeyExePathList = interpreter_executables
            for AutoHotKeyExePath in AutoHotKeyExePathList:
                if os_path_isfile(AutoHotKeyExePath):
                    print ("Not valid AutoHotKeyExePath=" + AutoHotKeyExePath)
                    break
                else:
                    print ("Not valid AutoHotKeyExePath=" + AutoHotKeyExePath)
                    continue

        if not os_path_isfile(AutoHotKeyExePath):
            print(r"ERROR: AutoHotkey ahkexec.py run(): Could not find AutoHotKeyExePath. Please create a Data\Packages\User\AutoHotkey.sublime-settings file to specify your custom path.")
        else:
            filepath = self.window.active_view().file_name()
            cmd = [AutoHotKeyExePath, "/ErrorStdOut", filepath]
            regex = "(.*) \(([0-9]*)\)() : ==> (.*)"
            self.window.run_command("exec", {"cmd": cmd, "file_regex": regex})

#---------------------------------------------------------------
    #

class ahkcompile(sublime_plugin.WindowCommand):
    def run(self, version = "default"):

        Ahk2ExePath = compiler_executables[version]

        # Also try old settings format where path is stored as a named-key in a dictionary.
        if not os_path_isfile(Ahk2ExePath):
            print("AutoHotkey ahkexec.py run(): Trying default version, because could not find Ahk2ExePath for version=" + str(version))
            Ahk2ExePath = compiler_executables["default"]

        # Also try old settings format where path is stored as a list of paths
        if not os_path_isfile(Ahk2ExePath):
            print("AutoHotkey ahkexec.py run(): Trying string list (without dictionary key-pairs old format), because could not find Ahk2ExePath for version=" + str(version) + " or version=default")
            Ahk2ExePathList = compiler_executables
            for Ahk2ExePath in Ahk2ExePathList:
                if os_path_isfile(Ahk2ExePath):
                    print ("Not valid Ahk2ExePath=" + Ahk2ExePath)
                    break
                else:
                    print ("Not valid Ahk2ExePath=" + Ahk2ExePath)
                    continue

        if not os_path_isfile(Ahk2ExePath):
            print(r"ERROR: AutoHotkey ahkexec.py run(): Could not find Ahk2ExePath. Please create a Data\Packages\User\AutoHotkey.sublime-settings file to specify your custom path.")
        else:
            filepath = self.window.active_view().file_name()
            cmd = [
                Ahk2ExePath,
                "/in"       , filepath,
                # '/icon'     , icon_file_full_path, #'C:\\_Essential\\_Graphics\\Icon\\1.ico',
                # '/mpress'   , '1',
                "/out"      , os_path_join(compile_out_dir, filepath.rpartition('\\')[2]),
            ]
            self.window.run_command("exec", {"cmd": cmd})


#---------------------------------------------------------------
    # http://www.autohotkey.com/board/topic/23575-how-to-run-dynamic-script-through-a-pipe/
    # The ahkrunpiped command will run the code in the current buffer by piping it as a temporary string to the AutoHotkey.exe executable. This enables you to run and test AutoHotkey scripts without needing to save them to a file first.

class ahkrunpiped(sublime_plugin.TextCommand):
    def get_code(self):
        # check if there's a selection
        code_sel = self.view.substr(self.view.sel()[0])
        if len(code_sel) != 0:
            return {'code': code_sel, "sel": True}

        # return full code if there is no selection
        code_full = self.view.substr(sublime.Region(0, self.view.size()))
        if len(code_full) != 0:
            return {'code': code_full, "sel": False}

        return False


    def run_code(self, code):
        PIPE_ACCESS_OUTBOUND = 0x00000002
        PIPE_UNLIMITED_INSTANCES = 255
        INVALID_HANDLE_VALUE = -1

        pipename = "AHK_" + str(windll.kernel32.GetTickCount())
        pipe = "\\\\.\\pipe\\" + pipename

        __PIPE_GA_ = windll.kernel32.CreateNamedPipeW(c_wchar_p(pipe),
                                                      PIPE_ACCESS_OUTBOUND,
                                                      0,
                                                      PIPE_UNLIMITED_INSTANCES,
                                                      0,
                                                      0,
                                                      0,
                                                      None)

        __PIPE_ = windll.kernel32.CreateNamedPipeW(c_wchar_p(pipe),
                                                   PIPE_ACCESS_OUTBOUND,
                                                   0,
                                                   PIPE_UNLIMITED_INSTANCES,
                                                   0,
                                                   0,
                                                   0,
                                                   None)

        if (__PIPE_ == INVALID_HANDLE_VALUE or __PIPE_GA_ == INVALID_HANDLE_VALUE):
            print("Failed to create named pipe.")
            return False

        pid = Popen([self.ahkpath, pipe], cwd=os_path_expanduser("~")).pid
        if not pid:
            print('Could not open file: "' + pipe + '"')
            return False

        windll.kernel32.ConnectNamedPipe(__PIPE_GA_, None)
        windll.kernel32.CloseHandle(__PIPE_GA_)
        windll.kernel32.ConnectNamedPipe(__PIPE_, None)

        script = chr(0xfeff) + code
        written = c_ulong(0)

        fSuccess = windll.kernel32.WriteFile(__PIPE_,
                                             script,
                                             (len(script)+1)*2,
                                             byref(written),
                                             None)
        if not fSuccess:
            return False

        windll.kernel32.CloseHandle(__PIPE_)
        return pid


class ahkrunpipedCommand(ahkrunpiped):

    def run(self, edit, version = 'default'):

        AutoHotKeyExePathList = interpreter_executables
        for AutoHotKeyExePath in AutoHotKeyExePathList:
            if os_path_isfile(AutoHotKeyExePath):
                self.ahkpath = AutoHotKeyExePath
                # print ("Found AutoHotKeyExePath=" + AutoHotKeyExePath)
                break
            else:
                # print ("Not Found AutoHotKeyExePath=" + AutoHotKeyExePath)
                continue
        # For backwards compatability with old User .sublime-settings files, also try old settings format where path is stored as a key-value pair in a dictionary.
        if not os_path_isfile(AutoHotKeyExePath):
            self.ahkpath = interpreter_executables["default"]

        # Continue only if syntax used is AutoHotkey or Plain text
        if not RgX_search(self.view.settings().get('syntax')):
            print("ahkrunpiped[cancelled] - Not an AHK code")
            return False

        filename = self.view.file_name()
        x = self.get_code()
        if filename:
            if x['sel']:
                self.run_code(x['code'])
            else:
                Popen([self.ahkpath, filename], cwd=os_path_dirname(filename))
            print("ahkrunpiped[file" +
                 ("/selection] - " if x['sel'] else "] - '") +
                 filename + "'")
        else:
            pid = self.run_code(x['code'])
            print("ahkrunpiped[unsaved" +
                 ("/selection] - " if x['sel'] else "] - ") +
                 str(pid) + "[PID]")

        # cleanup
        if hasattr(self, "ahkpath"): del self.ahkpath



