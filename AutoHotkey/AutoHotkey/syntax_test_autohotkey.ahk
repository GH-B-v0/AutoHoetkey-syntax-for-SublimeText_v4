
a := 5, b := "text"

allb1(N)
    /*

        AllOnes=allb1=IsOnes
        return  1 (if all bits are 1=set)

    */
    {

        Return ((N+1) & N==0) && (N<>0)
        return "some text, more text"

    }

some_function_2(N) ; comment_line
    /*

        comment block

    */ ; comment_line
    { ; comment_line

        ExecuteWithEachAHKBuild= ; comment_line
            (LTrim Com Join`n `% ; comment_line
            ; MsgBox Fill The ClipBoard With The File Name!
            File:=ClipBoard
            SplitPath,A_AHKPath,,Dir ; comment_line
            Versions=|A32|U32|U64|_Hv2\x32\AutoHotkey|_Hv2\x64\AutoHotkey
            Loop,Parse,Versions,|
            {   v:=A_LoopField, AHKExecutableFilePath:="""" Dir "\AutoHotkey" v ".exe"""
                Info:=""
            .   "`nPath:`t`t"               AHKExecutableFilePath
            .   "`nVersion:`t`t"            (InStr(v,"_Hv2")?"2.0-alpha":A_AHKVersion)
            .   "`nCharCode:`t"             (InStr(v,"A")=1?"ANSI":"Unicode")
            .   "`nImage Bit Type:`t"       (InStr(v,"64")||(v=""&&A_Is64BitOS)?"x64":"x32")
            .   "`nPrivileges:`t"           (InStr(AHKExecutableFilePath,"*RunAs")?"Admin":"Standard/Limited User")
                ToolTip,% "Executable Info:" Info,10,100,20
                RunWait,% AHKExecutableFilePath " """ File """"
            }
            )

    }

ByRefy(ByRef a, KV := 1
    , ByRef  1 := "", ByRef  2 := "", ByRef  3 := "", ByRef  4 := "", ByRef  5 := "" ,ByRef  6 := "", ByRef  7 := "", ByRef  8 := "", ByRef  9 := "", ByRef 10 := ""
    , ByRef 11 := "", ByRef 12 := "", ByRef 13 := "", ByRef 14 := "", ByRef 15 := "" ,ByRef 16 := "", ByRef 17 := "", ByRef 18 := "", ByRef 19 := "", ByRef 20 := ""
    , ByRef 21 := "", ByRef 22 := "", ByRef 23 := "", ByRef 24 := "", ByRef 25 := "" ,ByRef 26 := "", ByRef 27 := "", ByRef 28 := "", ByRef 29 := "", ByRef 30 := ""
    , ByRef 31 := "", ByRef 32 := "", ByRef 33 := "", ByRef 34 := "", ByRef 35 := "" ,ByRef 36 := "", ByRef 37 := "", ByRef 38 := "", ByRef 39 := "", ByRef 40 := ""
    , ByRef 41 := "", ByRef 42 := "", ByRef 43 := "", ByRef 44 := "", ByRef 45 := "" ,ByRef 46 := "", ByRef 47 := "", ByRef 48 := "", ByRef 49 := "", ByRef 50 := ""
    , ByRef 51 := "", ByRef 52 := "", ByRef 53 := "", ByRef 54 := "", ByRef 55 := "" ,ByRef 56 := "", ByRef 57 := "", ByRef 58 := "", ByRef 59 := "", ByRef 60 := ""
    , ByRef 61 := "", ByRef 62 := "", ByRef 63 := "", ByRef 64 := "", ByRef 65 := "" ,ByRef 66 := "", ByRef 67 := "", ByRef 68 := "", ByRef 69 := "", ByRef 70 := ""
    , ByRef 71 := "", ByRef 72 := "", ByRef 73 := "", ByRef 74 := "", ByRef 75 := "" ,ByRef 76 := "", ByRef 77 := "", ByRef 78 := "", ByRef 79 := "", ByRef 80 := ""
    , ByRef 81 := "", ByRef 82 := "", ByRef 83 := "", ByRef 84 := "", ByRef 85 := "" ,ByRef 86 := "", ByRef 87 := "", ByRef 88 := "", ByRef 89 := "", ByRef 90 := ""
    , ByRef 91 := "", ByRef 92 := "", ByRef 93 := "", ByRef 94 := "", ByRef 95 := "" ,ByRef 96 := "", ByRef 97 := "", ByRef 98 := "", ByRef 99 := "")
    /*

        e.g.        arr:={3:"Three",4:"Four",9:"Nine",99:"Some String",5:"Five Members Exist, This Is The Fifth"}, ByRefy(arr,a,b,c,d,e)
        Simply Sets A Variable Reference To The Input Object Associated Key's Value
        a   an array to convert its values to ByRef Variable References

    */
    {

        If KV=0
            For k In a
                %A_Index%:=k
        Else If KV=1
            For k,v In a
                %A_Index%:=v
        Else
            For k,v In a
                %A_Index%:=k KV v

    }

var_runbox_commands()
    /*

    */
    {

        return {    "Disk Clean Up Utility"     : "cleanmgr.exe"
            , "Windows Drive"                   : "\"
            , "Current User Profile Folder"     : "."
            , "Users Profile Folder"            : ".."
            , "Apps And Features"               : "appwiz.cpl"  }

    }

var_ahk_internals()
    /*
        internal static variables
    */
    {

        AutoHotkey_name_alias=
            (LTrim Com
            ; ---the first version of autohotkey in the list 1.1.* is the common version of the program between users and developed by me
            AutoHotkey 1.1.*                :AutoHotkey_L (AHK_L=AHK LexiKos)
            AutoHotkey 1.0                  :AutoHotkey Basic
            AutoHotkey 2.*                  :AutoHotkey_H_v2
            AutoHotkey 2.0-aXXX-*           :AutoHotkey_H_v2 (AHK_H=AHK HotKeyIt)
            AutoHotkey 2.0-aXXX-HXXX        :AutoHotkey_H_v2
            ;
            ; --
            IronAHK (alpha)                 :cross platform .NET rewrite of AutoHotkey
            ;
            ; --
            AutoHotkey.dll 2.0.aXXX-HXXX    :AutoHotkey.dll for autohotkey version 2
            AutoHotkey.dll 1.1.*-HXXX       :AutoHotkey.dll for autohotkey_L
            ;
            )

        AHK_L_error_dialogs_identification_keywords=
            (LTrim Com %
            ;
            invalid_declaration_code                        :["Error at line \d+.","Line Text: ","Error: This line does not contain a recognized action."]
            invalid_declaration_HotKey                      :["Error at line \d+.","Line Text: ","Error: Invalid hotkey."]
            invalid_declaration_command_linear_param_1      :["Error at line \d+.","Line Text: ","Error: Unexpected %"]
            invalid_declaration_command_linear_param_2      :["Error at line \d+.","Line Text: ","Error: ""%command_name%"" requires at least 1 parameter."]
            invalid_declaration_command_linear_param_3      :["Error:  Parameter #\d+ required","   Line#"]
            invalid_declaration_command_function_param      :["Error:  Too few parameters passed to function.","Specifically: ","   Line#"]
            ;
            app_exit                                        :["The program will exit."]
            )

        quote := Chr(34)
        ahk_built_in_input_keynames=
            (LTrim Com Join,
            ; ---HotKey keys name (alias are included too i.e. =BS=BackSpace)
            ,,,.,<<>>,<,=,>,~,',``,\,/,*,+,-,{,},[,],(,),!,#,^,$,`%,&,:,?,@,|,;,_,%quote%
            ,,,,,,,,,,,,,,,,,,,,,,,,,,
            0,1,2,3,4,5,6,7,8,9,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z
            F1,F2,F3,F4,F5,F6,F7,F8,F9,F10,F11,F12,F13,F14,F15,F16,F17,F18,F19,F20,F21,F22,F23,F24
            Alt,Control,Ctrl,LAlt,LControl,LCtrl,LShift,LWin,RAlt,RControl,RCtrl,RShift,RWin,Shift
            Browser_Back,Browser_Favorites,Browser_Forward,Browser_Home,Browser_Refresh,Browser_Search,Browser_Stop,Launch_App1,Launch_App2,Launch_Mail,Launch_Media,Media_Next,Media_Play_Pause,Media_Prev,Media_Stop,Volume_Down,Volume_Mute,Volume_Up
            AppsKey,Break,CtrlBreak,Help,Pause,PrintScreen,Sleep
            BackSpace,BS,Escape,Esc,Space,Tab,Enter
            CapsLock,ScrollLock,NumLock
            NumpadDiv,NumpadMult,NumpadAdd,NumpadSub,NumpadEnter,Numpad0,Numpad1,Numpad2,Numpad3,Numpad4,Numpad5,Numpad6,Numpad7,Numpad8,Numpad9,NumpadDot,NumpadIns,NumpadEnd,NumpadDown,NumpadPgDn,NumpadLeft
            NumpadClear,NumpadRight,NumpadHome,NumpadUp,NumpadPgUp,NumpadDel,Insert,Ins,End,Down,PgDn,Left,Right,Home,Up,PgUp,Delete,Del,Return
            ; ---mouse
            LButton,MButton,RButton,WheelDown,WheelLeft,WheelRight,WheelUp,XButton1,XButton2
            ; ---joystick
            Joy1,Joy2,Joy3,Joy4,Joy5,Joy6,Joy7,Joy8,Joy9,Joy10,Joy11,Joy12,Joy13,Joy14,Joy15,Joy16,Joy17,Joy18,Joy19,Joy20,Joy21,Joy22,Joy23,Joy24,Joy25,Joy26,Joy27,Joy28,Joy29,Joy30,Joy31,Joy32
            ;
            ; ---input commands keys name
            ` ,`t,`r,`n,`a,`s
            AltGr,AltDown,AltUp,ShiftUp,ShiftDown,CtrlDown,LWinDown,RWinDown,CtrlUp,LWinUp,RWinUp,SCnnn,VKnn,NumberLock,Divide,Multiply,Add
            Subtract,Clear,PageUp,PageDown,JoyAxes,JoyButtons,JoyInfo,JoyName,JoyPOV,JoyR,JoyU,JoyV,JoyX,JoyY,JoyZ,Blind,Raw
            )

        ahk_built_in_operators=
            (LTrim Com Join,
            ; ---note the first 3 consecutive commas in the list which represent a single literal comma as a separate entry
            !,!!,!=,!==,&,&&,&=,*,**,*=,+,++,+=,-,--,-=,.,.=,/,//,//=,/=,:=,<,<<,<<=,<=,<>,=,==,>,>=,>>,>>=,?:,^,^=,OR,|,|=,||,~,~=
            NOT,AND,Is,In,Between,Contains,Is NOT,NOT In,NOT Between,NOT Contains,new,x.y,%Expr%,() => expr,(expression)
            )

        ahk_built_in_variables=
            (LTrim Com Join,
            ; ---pseudo referenced variables %0%=count and %N% value of the variable
            0       ;   count:=%0%,1,2,3,4,5,6,7,8,9,...
            ; ---misc
            A_Tab,A_Space,True,False,A_ExitReason,A_LastError,ErrorLevel,ClipBoard,ClipBoardAll,A_Cursor,A_CaretX,A_CaretY
            ; ---file IP
            A_AHKPath,A_AppData,A_AppDataCommon,A_ComSpec,ComSpec,A_Desktop,A_DesktopCommon,A_LineFile,A_IconFile
            A_MyDocuments,A_ProgramFiles,ProgramFiles,A_Programs,A_ProgramsCommon,A_ScriptDir,A_ScriptFullPath
            A_ScriptName,A_StartMenu,A_StartMenuCommon,A_StartUp,A_StartUpCommon,A_Temp,A_WinDir,A_WorkingDir
            A_IPAddress1,A_IPAddress2,A_IPAddress3,A_IPAddress4
            ; ---user executable
            A_ComputerName,A_UserName,A_TimeIdle,A_TimeIdleKeyBoard,A_TimeIdleMouse,A_TimeIdlePhysical
            A_OSType,A_OSVersion,A_Is64BitOS,A_ScreenDPI,A_ScreenHeight,A_ScreenWidth,A_Language,A_TickCount
            A_Args,A_ScriptHwnd,A_AHKVersion,A_PtrSize,A_IsUnicode,A_IsAdmin,A_IsCompiled,A_IsPaused,A_IsSuspended,A_IsCritical,A_LineNumber
            ; ---date and time
            A_NowUTC,A_Now
            A_Year,A_MON,A_MDAY,A_Hour,A_Min,A_Sec,A_MSec
            A_YYYY,A_MM,A_MMM,A_MMMM,A_DD,A_DDD,A_DDDD
            A_YWeek,A_YDay,A_WDay
            ; ---loop [file|reg|read|parse]
            A_Index,A_LoopFileAttrib,A_LoopFileDir,A_LoopFileExt
            A_LoopFilePath,A_LoopFileFullPath,A_LoopFileLongPath,A_LoopFileShortPath,A_LoopFileName,A_LoopFileShortName
            A_LoopFileSize,A_LoopFileSizeKB,A_LoopFileSizeMB,A_LoopFileTimeAccessed,A_LoopFileTimeCreated,A_LoopFileTimeModified
            A_LoopRegKey,A_LoopRegName,A_LoopRegSubKey,A_LoopRegTimeModified,A_LoopRegType
            A_LoopReadLine,A_LoopField
            ; ---key label menu function routine
            A_PriorKey,A_PriorHotKey,A_ThisHotKey,A_TimeSincePriorHotKey,A_TimeSinceThisHotKey
            A_ThisFunc,A_ThisLabel,A_EndChar
            A_ThisMenu,A_ThisMenuItem,A_ThisMenuItemPos
            ; ---script settings
            A_CoordModeCaret,A_CoordModeMenu,A_CoordModeMouse,A_CoordModePixel,A_CoordModeToolTip
            A_ControlDelay,A_KeyDelay,A_KeyDelayPlay,A_MouseDelay,A_MouseDelayPlay,A_WinDelay,A_KeyDuration,A_KeyDurationPlay
            A_DefaultMouseSpeed,A_TitleMatchModeSpeed
            A_TitleMatchMode,A_SendLevel,A_SendMode
            A_AutoTrim,A_BatchLines,A_NumBatchLines,A_StringCaseSense,A_StoreCapsLockMode
            A_DetectHiddenText,A_DetectHiddenWindows,A_ListLines
            A_FileEncoding,A_FormatFloat,A_FormatInteger,A_RegView
            A_IconHidden,A_IconNumber,A_IconTip
            ; ---GUI
            A_DefaultGui,A_DefaultListView,A_DefaultTreeView
            A_Gui,A_GuiHeight,A_GuiWidth,A_GuiX,A_GuiY
            A_GuiControl,A_EventInfo,A_GuiControlEvent,A_GuiEvent
            ;
            )

        ahk_built_in_command_directives=
            (LTrim Com Join,
            #MaxMem,#MaxThreadsBuffer,#MaxThreadsPerHotKey,#MaxThreads,#MaxHotKeysPerInterval
            #Warn,#WarnContinuableException,#NoEnv,#NoTrayIcon,#Persistent,#SingleInstance,#IncludeAgain,#Include,#ClipboardTimeOut,#UseHook
            #Delimiter,#DerefChar,#LTrim,#KeyHistory,#AllowSameLineComments,#CommentFlag,#DllImport,#ErrorStdOut,#EscapeChar
            #If,#IfTimeOut,#IfWinActive,#IfWinExist,#IfWinNotActive,#IfWinNotExist,#WinActivateForce
            #HotKeyInterval,#HotKeyModifierTimeOut,#HotString,#InputLevel,#InstallKeybdHook,#InstallMouseHook,#MenuMaskKey
            )

        ahk_command_gui=
            (LTrim Com Join,
            ; ---ahk control elements
            ActiveX,Button,CheckBox,ComboBox,Custom,DateTime,DropDownBox,DropDownList,DDL,GroupBox,Link,ListBox
            ListView,MonthCal,Picture,Radio,Slider,StatusBar,Tab,Tab2,Tab3,Text,TreeView,UpDown
            GuiContextMenu,GuiDropFiles,GuiSize,GuiClose,GuiEscape,GuiCancel
            lv_ModifyCol,lv_Add,lv_Insert,lv_Modify,lv_Delete,lv_InsertCol,lv_DeleteCol,lv_GetCount,lv_GetNext,lv_GetText,il_Create,lv_SetImageList,il_Add,il_Destroy
            TV_Add,TV_Delete,TV_GetChild,TV_GetCount,TV_GetNext,TV_GetParent,TV_GetPrev,TV_GetSelection,TV_GetText,TV_Get,TV_Modify,TV_SetImageList
            Add,Color,Hide,Show,New,Disable,Enable,Choose,Font
            )

        ahk_command_parameters_keyword=
            (LTrim Com Join,
            Text,Picture,GroupBox,Button,Checkbox,Radio,DropDownList,DDL,ComboBox,ListBox,ListView,DateTime,MonthCal,Slider,StatusBar,Tab
            tab2,Tab3,TreeView,UpDown,Activex,Link,Custom,IconSmall,Tile,Report,AutoSize,Range,Font,Resize,Owner,Submit,NoHide,Minimize
            Maximize,Restore,Destroy,DPIScale,Margin,MaxSize,MinSize,OwnDialogs,GuiEscape,GuiClose,GuiSize,GuiContextMenu,GuiDropFiles
            OnClipboardChange,TabStop,AltSubmit,HScroll,VScroll,Border,Top,Bottom,Buttons,Expand,First,ImageList,Lines,Number,UPPERCASE
            Lowercase,WantReturn,Group,Background,BackgroundTrans,Theme,Caption,Delimiter,MinimizeBox,MaximizeBox,SysMenu,ToolWindow,Check3
            Checked,ReadOnly,Password,Hidden,Section,Move,Focus,Hide,Choose,ChooseString,Enabled,Disabled,Visible,HKEY_LOCAL_MACHINE
            HKEY_USERS,HKEY_CURRENT_USER,HKEY_CLASSES_ROOT,HKEY_CURRENT_CONFIG,HKLM,HKU,HKCU,HKCR,HKCC,REG_SZ,REG_EXPAND_SZ,REG_MULTI_SZ
            REG_DWORD,REG_BINARY,UseUnsetLocal,UseUnsetGlobal,UseEnv,LocalSameAsGlobal,LocalSameAsGlobal
            )

        ahk_H_v2_command=
            (LTrim Com Join,
            ; ---key name
            #,$,@,_
            0,1,2,3,4,5,6,7,8,9
            A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z
            F1,F2,F3,F4,F5,F6,F7,F8,F9,F10,F11,F12,F13,F14,F15,F16,F17,F18,F19,F20,F21,F22,F23,F24
            #3,$#,$0
            Tab,Break,Pause,Sleep,space,delete,Escape,Insert,Return,control
            ;
            %ahk_built_in_operators%
            ; ---cmd_function
            AhkExported,ComObjDll,CriticalObject,DynaCall,GetVar,ObjByRef,ObjDump,ObjLoad,ObjShare,ResGet,Struct,AhkThread,Alias,BinRun,BinToHex,Cast
            CreateScript,CriticalSection,CryptAES,DirGetParent,ErrorMessage,ExeThread,FileReplace,FindFunc,FindLabel,GetEnv,HexToBin,HIBYTE,HIWORD
            IsBOM,LOBYTE,LOWORD,MAKELANGID,MAKELCID,MAKELONG,MAKELPARAM,MAKELRESULT,MAKEWORD,MAKEWPARAM,MCodeH,NewThread,ResDelete,ResDllCreate
            ResExist,ResPut,ResPutFile,sizeof,StrPutVar,ThreadObj,ToChar,ToInt,ToShort,ToUChar,ToUInt,ToUShort,ahkFindFunction,ahkFindFunc,ExtractIconFromExecutable
            ZipCreateFile,ZipCreateBuffer,ZipAddFile,ZipCloseFile,UnZip,ZipAddBuffer,ZipCloseBuffer,UnZipBuffer,ZipRawMemory,UnZipRawMemory,ZipInfo,ZipOptions
            ZipAddFolder,MemoryFindResource,MemoryFreeLibrary,MemoryGetProcAddress,MemoryLoadLibrary,MemoryLoadResource,MemoryLoadString
            MemorySizeofResource,addFile,addScript,ahkExec,ahkExecuteLine,ahkFindLabel,ahkFunction,ahkPostFunction,ResourceLoadLibrary
            Between,SplashTextOff,SplashTextOn,ToolTip,SplashImage,Progress,EnvUpdate
            ;
            ; ---cmd_linear
            #DllImport,#WarnContinuableException,#WindowClassGui,#WindowClassMain,#CriticalObjectSleepTime
            #DefineDefaultObjectValue,#DefineDefaultArrayValue,#DefineDefaultMapValue
            #CriticalObjectTimeOut,ahkassign,ahkdll,ahkgetvar,ahkLabel,ahkPause,ahkReady,ahkReload,ahkTerminate,ahktextdll,DynaRun,Macro
            WinApi,MemoryModule
            ;
            ; ---variables
            A_AhkDir,A_DllPath,A_DllDir,A_ModuleHandle,A_ScriptStruct,A_GlobalStruct,A_MainThreadID,A_ThreadID,A_ZipCompressionLevel
            ; ---variables common with ahk 1
            A_Tab,A_Space,True,False,A_LastError,ErrorLevel,ClipBoard,A_Cursor,A_CaretX,A_CaretY,A_AHKPath,A_AppData,A_AppDataCommon,A_ComSpec
            A_Desktop,A_DesktopCommon,A_LineFile,A_MyDocuments,A_ProgramFiles,A_Programs,A_ProgramsCommon,A_ScriptDir,A_ScriptFullPath,A_ScriptName
            A_StartMenu,A_StartMenuCommon,A_StartUp,A_Temp,A_WinDir,A_WorkingDir,A_IPAddress1,A_IPAddress2,A_IPAddress3,A_IPAddress4,A_ComputerName
            A_UserName,A_TimeIdle,A_TimeIdlePhysical,A_OSVersion,A_Is64BitOS,A_ScreenDPI,A_ScreenHeight,A_ScreenWidth,A_Language,A_TickCount,A_Args
            A_ScriptHwnd,A_AHKVersion,A_PtrSize,A_IsUnicode,A_IsAdmin,A_IsDll,A_IsPaused,A_IsSuspended,A_IsCritical,A_LineNumber,A_NowUTC,A_Now
            A_Year,A_MON,A_MDAY,A_Hour,A_Min,A_Sec,A_MSec,A_YYYY,A_MM,A_MMM,A_MMMM,A_DD,A_DDD,A_DDDD,A_YWeek,A_YDay,A_WDay,A_Index,A_LoopField
            A_TimeSincePriorHotKey,A_TimeSinceThisHotKey,A_CoordModeCaret,A_CoordModeMenu,A_CoordModeMouse,A_CoordModePixel,A_CoordModeToolTip
            A_ControlDelay,A_KeyDelay,A_KeyDelayPlay,A_MouseDelay,A_MouseDelayPlay,A_WinDelay,A_KeyDuration,A_KeyDurationPlay,A_DefaultMouseSpeed
            A_TitleMatchModeSpeed,A_TitleMatchMode,A_SendLevel,A_SendMode,A_StringCaseSense,A_StoreCapsLockMode,A_DetectHiddenText
            A_DetectHiddenWindows,A_RegView,A_IconHidden,A_DefaultGui,A_EventInfo,ClipboardAll
            ;
            ; ---unknown_tagged
            Clone,Length,Object,Thread,ComObjCreate,StrPut,Chr,GetAddress,GetCapacity,SetCapacity
            NULL,status,name,encoding,string,base,error,Exist,Off,ThreadID,ScriptName,IsPaused,DllPath,Hide,Text
            Hwnd,Type,Script,wait,value,__Class,USHORT,STR,PTR,ASTR,WSTR,INT64,INT,SHORT,CHAR,FLOAT,DOUBLE,Size,Timeout,ahk_parent,exe,dll
            Password,Sys,CDecl,First,Bold,iid,Scroll,HScroll,VScroll,MaxSize,Offset,IsPointer
            GetPointer
            ;
            ; ---unknown_tag 2
            #NoTrayIcon,#Persistent,#MaxThreads,ObjRelease,RegisterCallback,DllCall,NumPut,NumGet,ControlSetText,InputBox,MsgBox,GUI
            LoadPicture,VarSetCapacity,Send,OnMessage,Exit,FileInstall,ImageSearch,PixelSearch,SysGet,WinSetTitle
            AutoHotkey.dll,structure,Select,FindResource,FreeLibrary,GetProcAddress,LoadResource,LoadString,SizeOfResource,LoadLibrary,Escape
            Language,WinSetTransColor,WinSetTransparent,ByRef,StrCmpLogicalW,SetMenuInfo,Bin
            ;
            ; ---mix ups (some param_keyword/method/property,... and other stuff. clean them up)
            CountO,#NoEnv,UseErrorLevel,Download,ObjectExtended,index,CryptAESDirGetParent,#DefineDefault,UMap,_NewEnum,Menu,OnClipboardChange
            Timer,call,AutoHotkey,ObjectLink,OwnerLink,Native,MSDEVColumnSelect,MSDEVLineSelect,source,typemap_getstderr,stdout
            breakpoint_listbreakpoint_remove,breakpoint_update,breakpoint_get,breakpoint_set,feature_set,feature_get,property_value,property_set
            property_get,context_names,context_get,stack_depth,stack_get,detach,stop,break,step_out,step_over,step_into,runfreeaddrinfo,starting
            running,supports_threads,protocol_version,supports_async,breakpoint_types,line,multiple_sessions,max_data,max_children,max_depth
            integerfloat,undefined,stoppedquot,apos,amplt,PgDn,PgUp,End,Home,Right,Left,Down,Ins,Del,NumpadEnter,Launch_App2,Launch_App1
            Launch_Media,Launch_Mail,Media_Play_Pause,Media_Stop,Media_Prev,Media_Next,Volume_Up,Volume_Down,Volume_Mute,Browser_Home
            Browser_Favorites,Browser_Search,Browser_Stop,Browser_Refresh,Browser_Forward,Browser_Back,XButton2,XButton1,MButton,RButton,LButton
            F24,F23,F22,F21,F20,F19,F18,F17,F16,F15,F14,F13,F12,F11,F10,Shift,Alt,Ctrl,RWin,LWin,RAlt,LAlt,RShift,LShift,RCtrl,LCtrl,RControl
            LControl,AppsKey,Help,CtrlBreak,PrintScreen,NumpadPgDn,NumpadPgUp,NumpadEnd,NumpadHome,NumpadRight,NumpadLeft,NumpadDown,NumpadUp
            NumpadClear,NumpadIns,NumpadDel,Enter,Backspace,Esc,CapsLock,ScrollLock,Numlock,NumpadDot,NumpadSub,NumpadAdd,NumpadDiv,NumpadMult
            Numpad9,Numpad8,Numpad7,Numpad6,Numpad5,Numpad4,Numpad3,Numpad2,Numpad1,Numpad0,FileEncoding,Shutdown,GuiControlGet,GuiControl,Reload
            ListHotkeys,ListVars,ListLines,KeyHistory,SetStoreCapslockMode,SetCapslockState,SetScrollLockState,SetNumlockState,BlockInput
            DetectHiddenText,DetectHiddenWindows,StringCaseSense,Pause,Suspend,FormatTime,SetTitleMatchMode,SetControlDelay,SetWinDelay
            SetMouseDelay,SetKeyDelay,OutputDebug,SetRegView,RegDelete,RegWrite,RegRead,IniDelete,IniWrite,IniRead,FileCreateShortcut
            FileGetShortcut,DirSelect,FileSelect,SetWorkingDir,FileGetVersion,FileGetSize,FileSetTime,FileGetTime,FileSetAttrib,FileGetAttrib
            DirDelete,DirCreate,DirMove,DirCopy,FileMove,FileCopy,FileRecycleEmpty,FileRecycle,FileDelete,FileRead,FileAppend,SoundPlay,SoundBeep
            SoundSet,SoundGet,DriveGet,Drive,GroupClose,GroupDeactivate,GroupActivate,GroupAdd,PixelGetColor,SendMessage,PostMessage,WinGetText
            WinGetPos,WinGetClass,WinGetTitle,MenuSelect,WinMove,WinKill,WinClose,WinMinimizeAllUndo,WinMinimizeAll,WinShow,WinHide,WinRestore
            WinMaximize,WinMinimize,WinWaitNotActive,WinWaitActive,WinWaitClose,WinWait,WinActivateBottom,WinActivate,Critical,SetTimer,Random
            Sleep,KeyWait,ClipWait,StatusBarWait,StatusBarGetText,MouseGetPos,MouseClickDrag,MouseClick,SetDefaultMouseSpeed,CoordMode,SendLevel
            SendMode,ControlGet,Control,ControlGetText,ControlGetFocus,ControlFocus,ControlGetPos,ControlMove,ControlClick,ControlSendRaw
            ControlSend,SendEvent,SendPlay,SendInput,SendRaw,RunWait,Run,RunAs,EnvSet,EnvGet,Sort,SplitPath,StrReplace,StrUpper,StrLower,Deref
            TrayTip,ExitApp,Throw,Finally,Catch,Try,Return,Gosub,Goto,Continue,Until,While,For,LoopParse,LoopRead,LoopReg,LoopFiles,Loop,Else,#If
            Static,Insert,Delete,Click,Tab,Edit,Hotkey,MouseMove,Input,WheelUp,WheelDown,WheelLeft,WheelRight,Space,yes,Toggle,AltTab,ShiftAltTab
            AltTabMenu,AltTabAndMenu,AltTabMenuDismiss,IfWin,Active,reg,joypoll,PART,MIDDLE,Raw,Temp,ALTDOWN,ALTUP,SHIFTDOWN,SHIFTUP,CTRLDOWN
            CONTROLDOWN,CTRLUP,CONTROLUP,LWINDOWN,LWINUP,RWINDOWN,RWINUP,ZipCompressionLevel,YYYY,YWeek,Year,YDay,WorkingDir,WinDir,WinDelay,WDay
            UserName,TitleMatchModeSpeed,TitleMatchMode,TimeSinceThisHotkey,TimeSincePriorHotkey,TimeIdlePhysical,TimeIdle,TickCount
            ThisMenuItemPos,ThisMenuItem,ThisMenu,ThisLabel,ThisHotkey,ThisFunc,StoreCapslockMode,StartupCommon,Startup,StartMenuCommon,StartMenu
            Sec,ScriptStruct,ScriptHwnd,ScriptFullPath,ScriptDir,ScreenWidth,ScreenHeight,ScreenDPI,RegView,PtrSize,ProgramsCommon,Programs
            PriorKey,PriorHotkey,OSVersion,NowUTC,Now,MyDocuments,MsgBoxResult,MSec,MouseDelayPlay,MouseDelay,Mon,ModuleHandle,MMMM,MMM,Min,MDay
            MainThreadID,LoopRegType,LoopRegTimeModified,LoopRegSubKey,LoopRegName,LoopRegKey,LoopReadLine,LoopFileTimeModified,LoopFileTimeCreated
            LoopFileTimeAccessed,LoopFileSizeMB,LoopFileSizeKB,LoopFileSize,LoopFileShortPath,LoopFileShortName,LoopFilePath,LoopFileName
            LoopFileFullPath,LoopFileExt,LoopFileDir,LoopFileAttrib,LoopField,LineNumber,LineFile,LastError,KeyDurationPlay,KeyDuration
            KeyDelayPlay,KeyDelay,IsUnicode,IsSuspended,IsDll,IsCritical,IsCompiled,IsAdmin,Is64bitOS,IPAddress4,IPAddress3,IPAddress2,IPAddress1
            InitialWorkingDir,IconTip,IconNumber,IconHidden,IconFile,Hour,GuiY,GuiX,GuiWidth,GuiHeight,GuiEvent,GuiControlEvent,GlobalStruct
            EventInfo,EndChar,DllDir,DesktopCommon,Desktop,DefaultTreeView,DefaultMouseSpeed,DefaultListView,DefaultGui,DDDD,DDD,Cursor
            CoordModeToolTip,CoordModePixel,CoordModeMouse,CoordModeMenu,CoordModeCaret,ControlDelay,ComputerName,CaretY,CaretX,AppDataCommon
            AppData,AhkVersion,AhkPath,AhkDir,MenuGetName,MenuGetHandle,OnExit,MonitorGetName,MonitorGetPrimary,MonitorGetCount,MonitorGetWorkArea
            MonitorGet,ProcessSetPriority,ProcessWaitClose,ProcessWait,ProcessClose,ProcessExist,WinMoveTop,WinMoveBottom,WinRedraw,WinSetRegion
            WinSetEnabled,WinSetExStyle,WinSetStyle,WinSetAlwaysOnTop,WinGetExStyle,WinGetStyle,WinGetTransColor,WinGetTransparent
            WinGetControlsHwnd,WinGetControls,WinGetMinMax,WinGetList,WinGetCount,WinGetProcessPath,WinGetProcessName,WinGetPID,WinGetIDLast
            WinGetID,Exception,ComObjQuery,ComObjArray,ComObjFlags,ComObjValue,ComObjType,ComObjError,ComObjConnect,ComObjGet,ComObjActive
            ComObject,FileOpen,Array,ObjNewEnum,ObjClone,ObjGetAddress,ObjSetCapacity,ObjGetCapacity,ObjHasKey,ObjMinIndex,ObjMaxIndex,ObjCount
            ObjLength,ObjPop,ObjPush,ObjRemoveAt,ObjDelete,ObjInsertAt,ObjRawSet,ObjBindMethod,ObjAddRef,MemoryCallEntryPoint,getTokenValue
            CacheEnable,IsObject,DateDiff,DateAdd,Log,Sqrt,Exp,ATan,ACos,ASin,Tan,Cos,Sin,Abs,Mod,Ceil,Floor,Round,WinActive,WinExist,DirExist
            FileExist,IsByRef,IsFunc,Func,IsLabel,StrGet,Ord,GetKeySC,GetKeyVK,GetKeyName,GetKeyState,Format,RegExReplace,RegExMatch,StrSplit,InStr
            RTrim,LTrim,Trim,SubStr,StrLen,SB_SetIcon,SB_SetParts,SB_SetText,IL_Add,IL_Destroy,IL_Create,TV_SetImageList,TV_GetText,TV_Get
            TV_GetCount,TV_GetSelection,TV_GetChild,TV_GetParent,TV_GetPrev,TV_GetNext,TV_Delete,TV_Modify,TV_Add,LV_SetImageList,LV_DeleteCol
            LV_ModifyCol,LV_InsertCol,LV_Delete,LV_Modify,LV_Insert,LV_Add,LV_GetText,LV_GetCount,LV_GetNext,HKLM,HKEY_LOCAL_MACHINE,HKCR
            HKEY_CLASSES_ROOT,HKCC,HKEY_CURRENT_CONFIG,HKCU,HKEY_CURRENT_USER,HKU,HKEY_USERS,REG_SZ,REG_EXPAND_SZ,REG_MULTI_SZ,REG_DWORD,REG_BINARY
            Default,Master,Speakers,Headphones,Digital,Microphone,Synth,Telephone,PCSpeaker,Wave,Aux,Analog,Vol,Volume,OnOff,Mute,Mono,Loudness
            StereoEnh,BassBoost,Pan,QSoundPan,Bass,Treble,Equalizer,RegEx,FAST,SLOW,Show,Add,Rename,Check,Uncheck,ToggleCheck,Enable,Disable
            ToggleEnable,Standard,NoStandard,Color,NoDefault,DeleteAll,Tip,Icon,NoIcon,MainWindow,NoMainWindow,Submit,Cancel,Minimize,Maximize
            Restore,Destroy,Margin,Font,ListView,TreeView,Flash,New,Move,MoveDraw,Focus,Choose,ChooseString,Pos,FocusV,Enabled,Visible,Button
            Checkbox,Radio,DDL,DropDownList,ComboBox,ListBox,UpDown,Slider,Tab2,Tab3,GroupBox,Pic,Picture,DateTime,MonthCal,StatusBar,ActiveX,Link
            Custom,Priority,Interrupt,NoTimers,Style,ExStyle,ShowDropDown,HideDropDown,TabLeft,TabRight,EditPaste,Checked,FindString,Choice,List
            LineCount,CurrentLine,CurrentCol,Selected,Eject,Lock,Unlock,Label,FileSystem,Serial,StatusCD,Capacity,Cap,SpaceFree,AlwaysOn,AlwaysOff
            Locale,Permit,Mouse,SendAndMouse,MouseMoveOff,Play,Event,ThenEvent,ThenPlay,MAX,Screen,Relative,Window,Client,Pixel,Caret,Tray
            Shell_TrayWnd,CreateWindow,Consolas,open,AutoHotkeyGUI,Class,Join,Get,Set,#Include,#IncludeAgain,#SingleInstance,Force,Prompt,Ignore
            #InstallKeybdHook,#InstallMouseHook,#UseHook,#IfTimeout,#IfWin,#Hotstring,EndChars,NoMouse,#HotkeyModifierTimeout,#HotkeyInterval
            #MaxHotkeysPerInterval,#MaxThreadsPerHotkey,#MaxThreadsBuffer,#ClipboardTimeout,#WinActivateForce,#ErrorStdOut,#KeyHistory,#MenuMaskKey
            #InputLevel,#MustDeclare,#Warn,All,UseUnsetLocal,UseUnsetGlobal,LocalSameAsGlobal,Var,Global,Local,Files,Read,Parse,MCA,BKM,this
            extends,__Init,LIB,Win,CSV,Next,ahk_group,What,File,Message,Extra,Warning,Unk,find,explore,print,properties,LenPosValue,UpArrow,SizeWE
            SizeNWSE,SizeNS,SizeNESW,SizeAll,IBeam,Cross,Arrow,AppStarting,InputThenPlay,REG_LINK,REG_RESOURCE_LIST,REG_FULL_RESOURCE_DESCRIPTOR
            REG_RESOURCE_REQUIREMENTS_LIST,REG_QWORD,KEY,Close,Integer,Time,Match,NewInput,Count,Focused,Col,ind,GetMonitorInfoWFast,ico,Trans
            TaskbarCreated,AHK_ATTACH_DEBUGGER,localhost,InstallDir,XYWHT,YDay0,ShortDate,LongDate,YearMonth,dMyg,hHmst,closed,CDRom,Removable
            Fixed,Network,Ramdisk,Unknown,Ready,Invalid,NotReady,ReadOnly,stopped,Abort,Retry,TryAgain,Logoff,Single,Len,Mark,pcre_callout,diouxX
            eEfgGaA,cCp,ULlTt,CreateTime,ModifyTime,AccessTime,Attributes,CompressedSize,UncompressedSize,Push,Callback,Vis,Center,Uni,Desc,Case
            Logical,NoSort,Auto,Hdr,Expand,Joy,JoyX,JoyY,JoyZ,JoyR,JoyU,JoyV,JoyPOV,JoyName,JoyButtons,JoyAxes,JoyInfo,psapi,DISPLAY,Combo,wininet
            SeShutdownPrivilege,atl,AtlAxGetControlCall,VarTypeDispatchType,DispatchIID,EventSink,Prefix,Date,Digit,Xdigit,Alnum,Alpha,Upper,Lower
            ColClick,RightClick,DoubleClick,Normal,NoHide,Exact,ahk_autosize,RegClass,ContextMenu,DropFiles,ahk_dlg,SysLink,AtlAxWinInit,AtlAxWin
            Owner,Parent,AlwaysOnTop,Border,Caption,Delimiter,Disabled,LastFound,MaximizeBox,MinimizeBox,MinSize,OwnDialogs,Resize,SysMenu,Theme
            ToolWindow,DPIScale,Section,AltSubmit,Gray,None,Tabstop,NoTab,Group,Redraw,Hidden,Wrap,Background,HasKey,Small,Report,Tile,Grid
            ImageList,Check3,Multi,WantReturn,WantTab,WantCtrlA,WantF2,Lowercase,Uppercase,Limit,Simple,Horz,Invert,NoTicks,TickInterval,Page,Thick
            Buddy,Vertical,Range,Smooth,Buttons,Bottom,AutoSize,NoActivate,italic,norm,underline,strike,shlwapi,BarBreak,__Call,__Set,__Get
            __Delete,InsertAt,RemoveAt,Pop,MaxIndex,MinIndex,MinParams,MaxParams,IsBuiltIn,IsVariadic,IsOptional,__New,NewEnum,Fill,_New,Write
            RawRead,RawWrite,AtEOF,__Handle,Position,Seek,Tell
            ;
            )

        ahk_v2_command=
            (LTrim Com Join,
            %ahk_built_in_operators%
            ; ---variables
            A_TrayMenu,A_AllowMainWindow,A_InitialWorkingDir
            ClipboardAll,Clipboard,A_AhkPath,A_AhkPath,A_AhkVersion,A_AhkVersion,A_AhkVersion,A_AppData,A_AppDataCommon,A_Args,A_Args,A_Args
            A_ComputerName,A_ComSpec,A_ControlDelay,A_CoordModeCaret,A_CoordModeMouse,A_CoordModeToolTip,A_Cursor,A_DD,A_DDD,A_DDDD
            A_DefaultMouseSpeed,A_Desktop,A_DesktopCommon,A_DetectHiddenText,A_DetectHiddenWindows,A_EndChar,A_EventInfo,A_EventInfo,A_EventInfo
            A_FileEncoding,A_Hour,A_IconFile,A_IconFile,A_IconFile,A_IconHidden,A_IconNumber,A_IconTip,A_Index,A_Is64bitOS
            A_IsAdmin,A_IsCompiled,A_IsCritical,A_IsCritical,A_IsCritical,A_IsPaused,A_IsSuspended,A_IsUnicode,A_KeyDelay,A_KeyDelayPlay,A_Language
            A_LastError,A_LastError,A_LastError,A_LastError,A_LineFile,A_LineNumber,A_LineNumber,A_LineNumber,A_ListLines,A_LoopField,A_LoopField
            A_LoopFileAttrib,A_LoopFileDir,A_LoopFileExt,A_LoopFileFullPath,A_LoopFileName,A_LoopFileName,A_LoopFileName,A_LoopFileName
            A_LoopFilePath,A_LoopFilePath,A_LoopFileShortName,A_LoopFileShortPath,A_LoopFileShortPath,A_LoopFileSize,A_LoopFileSizeKB
            A_LoopFileSizeMB,A_LoopFileTimeAccessed,A_LoopFileTimeCreated,A_LoopFileTimeModified,A_LoopReadLine,A_LoopRegKey,A_LoopRegName
            A_LoopRegName,A_LoopRegName,A_LoopRegTimeModified,A_LoopRegType,A_LoopRegType,A_MDay,A_Min,A_MM,A_MMM,A_MMMM,A_Mon,A_MouseDelay
            A_MouseDelay,A_MouseDelayPlay,A_MSec,A_MSec,A_MyDocuments,A_Now,A_NowUTC,A_OSVersion,A_OSVersion,A_PriorHotkey,A_PriorHotkey,A_PriorKey
            A_ProgramFiles,A_ProgramFiles,A_ProgramFiles,A_Programs,A_ProgramsCommon,A_PtrSize,A_RegView,A_ScreenDPI,A_ScreenHeight,A_ScreenWidth
            A_ScreenWidth,A_ScriptDir,A_ScriptDir,A_ScriptFullPath,A_ScriptFullPath,A_ScriptFullPath,A_ScriptHwnd,A_ScriptName,A_Sec,A_SendLevel
            A_SendMode,A_Space,A_Space,A_StartMenu,A_StartMenuCommon,A_Startup,A_StartupCommon,A_StoreCapsLockMode,A_StringCaseSense,A_Tab,A_Tab
            A_Temp,A_ThisFunc,A_ThisHotkey,A_ThisHotkey,A_ThisHotkey,A_ThisHotkey,A_ThisHotkey,A_ThisLabel,A_ThisLabel,A_ThisLabel,A_ThisLabel
            A_TickCount,A_TickCount,A_TickCount,A_TickCount,A_TickCount,A_TickCount,A_TimeIdle,A_TimeIdle,A_TimeIdle,A_TimeIdle,A_TimeIdle
            A_TimeIdleKeyboard,A_TimeIdleMouse,A_TimeIdlePhysical,A_TimeIdlePhysical,A_TimeSincePriorHotkey,A_TimeSinceThisHotkey,A_TitleMatchMode
            A_TitleMatchModeSpeed,A_UserName,A_WDay,A_WinDelay,A_WinDir,A_WorkingDir,A_WorkingDir,A_YDay,A_Year,A_YWeek,A_YWeek,A_YWeek,A_YWeek,A_YYYY
            ;
            ; ---directives
            #DllLoad,#SuspendExempt,#ClipboardTimeout,#ErrorStdOut,#HotkeyInterval,#UseHook,#Warn,#WinActivateForce
            #HotkeyModifierTimeout,#Hotstring,#If,#IfTimeout,#Include,#IncludeAgain,#InputLevel,#InstallKeybdHook,#InstallMouseHook,#KeyHistory
            #MaxHotkeysPerInterval,#MaxThreads,#MaxThreadsBuffer,#MaxThreadsPerHotkey,#MenuMaskKey,#NoTrayIcon,#Persistent,#SingleInstance
            ;
            ; ---functions and commands
            ControlSend,ControlGetText,BlockInput,Break,BufferAlloc,CallbackCreate,CaretGetPos,Catch,Chr,ClipWait,ComCall,ComObjActive
            ComObjArray,ComObjConnect,ComObjCreate,ComObject,ComObjError,ComObjFlags,ComObjGet,ComObjQuery,ComObjType,ComObjValue,Continue
            ControlAddItem,ControlChoose,ControlChooseString,ControlClick,ControlDeleteItem,ControlEditPaste,ControlFindItem,ControlFocus
            ControlGetChecked,ControlGetChoice,ControlGetClassNN,ControlGetCurrentCol,ControlGetCurrentLine,ControlGetEnabled,ControlGetFocus
            ControlGetHwnd,ControlGetLine,ControlGetLineCount,ControlGetList,ControlGetPos,ControlGetSelected,ControlGetStyle,ControlGetExStyle
            ControlGetTab,ControlGetVisible,ControlHide,ControlHideDropDown,ControlMove,ControlSendText,ControlSetChecked,ControlSetEnabled
            ControlSetStyle,ControlSetExStyle,ControlSetTab,ControlSetText,ControlShow,ControlShowDropDown,CoordMode,Critical,DateAdd,DateDiff
            DetectHiddenText,DetectHiddenWindows,DirCopy,DirCreate,DirDelete,DirExist,DirMove,DirSelect,DllCall,Download,DriveEject,CallbackFree
            DriveGetCapacity,DriveGetFileSystem,DriveGetLabel,DriveGetList,DriveGetSerial,DriveGetSpaceFree,DriveGetStatus,DriveGetStatusCD
            DriveGetType,DriveLock,DriveSetLabel,DriveUnlock,Edit,Else,EnvGet,EnvSet,Exit,ExitApp,FileAppend,FileCopy,FileCreateShortcut,FileDelete
            FileEncoding,FileExist,FileGetAttrib,FileGetShortcut,FileGetSize,FileGetTime,FileGetVersion,FileInstall,FileMove,FileOpen,FileRead
            FileRecycle,FileRecycleEmpty,FileSelect,FileSetAttrib,FileSetTime,Finally,Float,For,Format,FormatTime,Func,GetKeyName,GetKeySC
            GetKeyState,GetKeyVK,GetMethod,Gosub,Goto,GroupActivate,GroupAdd,GroupClose,GroupDeactivate,SetFormat,Change,SetText,SetParts,SetIcon
            GuiCreate,GuiCtrlFromHwnd,GuiFromHwnd,HasBase,HasMethod,HasProp,Hotkey,Hotstring,If,ImageSearch,IniDelete,IniRead,IniWrite,InputBox
            InputHook,KeyOpt,Start,Wait,Stop,InStr,Integer,IsByRef,IsFunc,IsLabel,IsObject,IsSet,KeyHistory,KeyWait,ListHotkeys,ListLines,ListVars
            Add,Insert,Modify,Delete,ModifyCol,InsertCol,DeleteCol,GetCount,GetNext,GetText,SetImageList,IL_Create,IL_Add,IL_Destroy,LoadPicture
            Loop,Loop Files,Loop Parse,Loop Read,Loop Reg,Abs,Ceil,Exp,Floor,Log,Ln,Max,Min,Mod,Round,Sqrt,Sin,Cos,Tan,ASin,ACos,ATan,MenuBarCreate
            MenuCreate,MenuFromHandle,MenuSelect,MonitorGet,MonitorGetCount,MonitorGetName,MonitorGetPrimary,MonitorGetWorkArea,MouseClick
            MouseClickDrag,MouseGetPos,MouseMove,MsgBox,NumGet,NumPut,ObjAddRef,ObjRelease,ObjBindMethod,OnClipboardChange,OnError,OnExit,OnMessage
            Ord,OutputDebug,#p,Pause,PixelGetColor,PixelSearch,PostMessage,ProcessClose,ProcessExist,ProcessSetPriority,ProcessWait
            ProcessWaitClose,Random,RandomSeed,RegDelete,RegDeleteKey,RegExMatch,RegExReplace,RegRead,RegWrite,Reload,Return,Run,RunWait,RunAs,Send
            SendText,SendInput,SendPlay,SendEvent,SendLevel,SendMessage,SendMode,SetControlDelay,SetDefaultMouseSpeed,SetKeyDelay,SetMouseDelay
            SetCapsLockState,SetNumLockState,SetScrollLockState,SetRegView,SetStoreCapsLockMode,SetTimer,SetTitleMatchMode,SetWinDelay
            SetWorkingDir,Shutdown,Sleep,Sort,SoundBeep,SoundGetInterface,SoundGetMute,SoundGetName,SoundGetVolume,SoundPlay,SoundSetMute
            SoundSetVolume,SplitPath,StatusBarGetText,StatusBarWait,StrCompare,StrGet,String,StringCaseSense,StrLen,StrLower,StrUpper,StrPut
            StrReplace,StrSplit,SubStr,Suspend,Switch,Case,Default,SysGet,SysGetIPAddresses,Thread,Throw,Exception,ToolTip,TraySetIcon,TrayTip
            GetSelection,GetParent,GetChild,GetPrev,Get,Trim,LTrim,RTrim,Try,Type,Until,VarSetStrCapacity,While,WinActivate,WinActivateBottom
            WinActive,WinClose,WinExist,WinGetClass,WinGetClientPos,WinGetControls,WinGetControlsHwnd,WinGetCount,WinGetID,WinGetIDLast,WinGetList
            WinGetMinMax,WinGetPID,WinGetPos,WinGetProcessName,WinGetProcessPath,WinGetStyle,WinGetExStyle,WinGetText,WinGetTitle,WinGetTransColor
            WinGetTransparent,WinHide,WinKill,WinMaximize,WinMinimize,WinMinimizeAll,WinMinimizeAllUndo,WinMove,WinMoveBottom,WinMoveTop,WinRedraw
            WinRestore,WinSetAlwaysOnTop,WinSetEnabled,WinSetRegion,WinSetStyle,WinSetExStyle,WinSetTitle,WinSetTransColor,WinSetTransparent
            WinShow,WinWait,WinWaitActive,WinWaitNotActive,WinWaitClose,ObjClone,ObjGetBase,Clone,Has,InsertAt,Pop,Push,RemoveAt,Length,Capacity,New,Prototype,Call
            Read,Write,ReadLine,WriteLine,RawRead,RawWrite,Seek,Close,Bind,IsOptional,Show,Submit,Hide,Destroy,SetFont,Opt,Minimize,Maximize,Restore
            Flash,Move,Focus,Choose,UseTab,OnCommand,OnEvent,ContextMenu,DropFiles,Escape,Size,Click,DoubleClick,ColClick,LoseFocus,ItemCheck
            ItemEdit,ItemExpand,ItemFocus,ItemSelect,OnNotify,Clear,Count,CaseSense,Check,Disable,Enable,Rename,SetColor,ToggleCheck,ToggleEnable
            Uncheck,AddStandard,DefineMethod,DefineProp,DeleteMethod,DeleteProp,GetOwnPropDesc,HasOwnMethod,HasOwnProp,OwnMethods,OwnProps
            ObjRawGet,ObjRawSet,ObjSetBase,ObjOwnPropCount,ObjSetCapacity,ObjGetCapacity,ObjHasOwnProp,ObjDeleteProp,ObjOwnMethods,ObjOwnProps
            ;
            ; ---mix ups (some param_keyword/method/property,... and other stuff. clean them up)
            _AddRef,_Clone,_GetAddress,_GetCapacity,_Haskey,_Insert,_MaxIndex,_MinIndex,_Release,_Remove,_SetCapacity
            Map
            ;
            )

        command_common_utilities=
            (LTrim Com Join,
            ; ---common utility programs commands name
            hWnd,Fn
            CMD,Help,Echo,Set,Dir,Do,Tree,Start,EOF
            Explorer,TaskList,EXIFTool,Find
            NetSh,NetStat,Python,Java,Perl,Rubby
            Off,On,Yes,No,URL,URI,Haystack,Network,Adapter,WMIC,Option,Path,Image,Theme,Parse,Number,Label,Play,Nul,Priority,Token,User,Line,Num,Quote,Ignore,Target,Main
            None,OR,Extension,Section,Password,AND,Interrupt,Domain,Exist,Reason,Expression,Group,Icon,Remove,Delay,Device,Distance,Dividend,Divisor,Description
            Second,Minute,Hour,Command,Component,All,ANSI,Arg,Array,AutoHotKey,Working,Bench,Char,Count,Del,DoubleClick,Double,ElapsedTime,Enum,Exception,ExStyle,Float
            Function,Functor,GetDoubleClickTime,IDLast,Instance,Ins,Int,Is,JSON,Lay,List,lParam,Mark,MinMax,Mode,Mouse,Normal,NOT,Object,Out,Parameter,Param,Performance
            6PID,Post,ProcessName,ProcessPath,Ptr,RightClick,Script,Shell,Short,StartTime,Test,StdErr,StdIn,StdOut,Str,Style,This,Title,Toggle,TransColor,Transparent
            UInt,UniCode,UPtr,UTF-8,VirtualHeight,VirtualWidth,WinExistMaxIndex,Win,wParam
            GdiPlus,WinMgmts,Wbem,Imperson,Authentic,Level,Root,WMI,CIMv2,Default,Dll,AHK,Change,Connect,Create,Display,Profile,File,Filter,Folder,Free,Get,Handle
            Initialize,Item,Kill,Lock,Long,Mem,Message,Name,Pipe,PowrProf,Register,Select,State,Station,Task,Timer,Un,Var,Window,Work
            InputEnd
            ;
            )

        ahk_internal_elements=
            (LTrim Com Join,
            %ahk_built_in_input_keynames%
            %ahk_built_in_operators%
            %ahk_built_in_variables%
            %ahk_built_in_command_directives%
            %ahk_command_gui%
            %ahk_v2_command%
            %command_common_utilities%
            ; ---ahk commands
            ; --functions
            OnError,OnExit,OnClipboardChange,OnMessage
            Local,Static,Global
            ; ---COM objects functions
            ComObj,ComObject,ComObjEnWrap,ComObjUnWrap,ComObjMissing
            ComObjActive,ComObjArray,ComObjConnect,ComObjCreate,ComObjError,ComObjFlags,ComObjGet,ComObjQuery,ComObjType,ComObjValue
            ComObjParameter
            ; ---ahk objects
            Clone,ObjNewEnum,_NewEnum
            ObjDelete,ObjInsertAt,ObjCount,ObjSetBase,ObjGetBase,ObjRawGet
            IsOptional,ObjClone,ObjGetAddress,ObjGetCapacity,ObjHasKey,ObjInsert,ObjLength,ObjMaxIndex,ObjMinIndex,ObjPop,ObjPush,ObjRemoveAt,ObjRemove,ObjSetCapacity
            ObjAddRef,ObjBindMethod,ObjRawSet,ObjRelease
            MaxIndex,MinIndex
            HasKey,InsertAt
            IsObject
            ; ---status bar functions
            SB_SetIcon,SB_SetParts,SB_SetText
            ; --linear commands
            ;
            ;
            ;
            InputHook
            ; ---subroutine
            ExitApp,Reload,Exit,Return,Try,Catch,Finally,Switch,Case,Throw,GoSub,GoTo,Critical
            ; ---general mathematical and trigonometry functions
            Abs,Ceil,Exp,Floor,Log,Ln,Max,Min,Mod,Round,Sqrt
            Sin,Cos,Tan,ASin,ACos,ATan
            ; ---character encoding functions
            Chr,Asc,Ord
            ; ---loops
            While,For,Loop,Loop Files,Loop Reg,Loop Read,Loop Parse,Continue,Break,Until
            ;
            AutoTrim,BlockInput,Block,Call,Click,ClipWait
            CoordMode,Delete,DetectHiddenText,DetectHiddenWindows,DllCall,DriveGet,DriveSpaceFree,Drive,Edit,Else,EndRepeat
            EnvAdd,EnvDiv,EnvGet,EnvMult,EnvSet,EnvSub,EnvUpdate
            FileAppend,FileCopyDir,FileCopy,FileCreateDir,FileCreateShortcut,FileDelete,FileEncoding,FileExist,FileGetAttrib,FileGetShortcut,FileGetSize,FileGetTime,FileSetTime
            FileGetVersion,FileInstall,FileMoveDir,FileMove,FileOpen,FileReadLine,FileRead,FileRecycleEmpty,FileRecycle,FileRemoveDir,FileSelectFile,FileSelectFolder,FileSetAttrib
            FormatTime,Format,Func,GetAddress,GetCapacity
            GetKeyName,GetKeySC,GetKeyState,GetKeyVK,GetKey
            GroupActivate,GroupAdd,GroupClose,GroupDeActivate
            HotKey,HotString,IfBetween
            IfEqual,IfExist,IfExpression,IfGreaterOrEqual,IfGreater,IfInString,IfIn,IfIs,IfLessOrEqual,IfLess,IfMsgBox,IfNotEqual,IfNotExist
            IfNotInString,IfWinActive,IfWinExist,IfWinNotActive,IfWinNotExist,If,ImageSearch,IniDelete,IniRead,IniWrite,InputBox,Input
            IsByRef,IsFunc,IsLabel,KeyHistory,KeyWait,Length,ListHotKeys,ListLines,ListVars,LoadPicture
            MenuGetHandle,MenuGetName,Menu,MouseClickDrag,MouseClick,MouseGetPos,MouseMove
            OutputDebug,Pause,PixelGetColor,PixelSearch
            Pop,PostMessage,Process,Push,Random,RegDelete,RegisterCallback,RegRead,RegWrite,RemoveAt
            RunAs,RunWait,Run,SendEvent,SendInput,SendLevel,SendMessage,SendMode,SendPlay,SendRaw,Send,SetBatchLines
            SetCapacity,SetCapsLockState,SetControlDelay,SetDefaultMouseSpeed,SetEnv,SetFormat,SetKeyDelay,SetMouseDelay,SetNumLockState
            SetRegView,SetScrollLockState,SetStoreCapslockMode,SetTimer,SetTitleMatchMode,SetWinDelay,SetWorkingDir,ShutDown,Sleep
            StatusBarGetText,StatusBarWait
            Suspend,SysGet,Thread,Transform,URLDownloadToFile
            ;
            ToolTip,TrayTip,MsgBox,Progress,SplashImage,SplashTextOff,SplashTextOn,SoundBeep,SoundGetWaveVolume,SoundGet,SoundPlay,SoundSetWaveVolume,SoundSet
            ; ---memory/buffer commands
            VarSetCapacity,NumGet,NumPut,StrGet,StrPut
            ; ---string commands
            Sort,LTrim,RTrim,Trim
            SplitPath,InStr,StringCaseSense,StringGetPos,StringLeft,StringLen,StringLower,StringMid
            StringReplace,StringRight,StringSplit,StringTrimLeft,StringTrimRight,StringUpper,StrLen,StrReplace,StrSplit,SubStr
            RegExMatch,RegExReplace
            ;
            ; ---GUI and control commands
            GUIControlGet,GUIControl,GUI
            ControlClick,ControlFocus,ControlGetFocus,ControlGetPos,ControlGetText,ControlGet,ControlMove,ControlSendRaw,ControlSend,ControlSetText,Control
            ; ---window commands
            WinActivateBottom,WinActivate,WinActive,WinClose,WinExist,WinGetActiveStats,WinGetActiveTitle,WinGetClass
            WinGetPos,WinGetText,WinGetTitle,WinGet,WinHide,WinKill,WinMaximize,WinMenuSelectItem,WinMinimizeAllUndo
            WinMinimizeAll,WinMinimize,WinMove,WinRestore,WinSetTitle,WinSet,WinShow,WinWaitActive,WinWaitClose,WinWaitNotActive,WinWait
            ;
            Bind,Close,CtrlEvent,ExitFunc,Next,RawRead,RawWrite,ReadLine,ReadAll,ReadNumType,Seek,Tell,Write,WriteLine,WritEnumType
            ; ---deprecated from AutoIt commands translation
            EndRepeat,HideAutoItWin,HideAutoItWin,LeftClick,LeftClickDrag,Repeat,RightClick,RightClickDrag
            )

        ; ahk_insight_array:=JSON_ToObj("{" ahk_internal_elements "}")
        ahk_insight_array := []

        Sort, ahk_internal_elements, % "D,U"
        ahk_insight_array.element       :=  ahk_internal_elements ; sorted alphabetical
        Sort, ahk_internal_elements, % "D,F SortByLengthAscending"
        ahk_insight_array.element_SBLA  :=  ahk_internal_elements ; sorted by length ascending

        ahk_insight_array.BIK           :=  ahk_built_in_input_keynames
        ahk_insight_array.BIO           :=  ahk_built_in_operators
        ahk_insight_array.BIV           :=  ahk_built_in_variables
        ahk_insight_array.BID           :=  ahk_built_in_command_directives
        ahk_insight_array.BIF           :=  ahk_built_in_command_functions
        ahk_insight_array.BIC           :=  ahk_built_in_command_linear
        ahk_insight_array.BIG           :=  ahk_built_in_command_GUI


        Return ahk_insight_array

    }


class SQLiteDB_BaseClass
    {

    }

class SQLiteDB extends SQLiteDB_BaseClass
    {
        Class _Table
            /*

                CLASS _Table
                Object returned from method GetTable()
                _Table is an independent object and does not need SQLite after creation at all.


            */
            {

                __New()
                    /*

                        CONSTRUCTOR  Create instance variables

                    */
                    {

                        This.ColumnCount := 0          ; Number of columns in the result table         (Integer)
                        This.RowCount := 0             ; Number of rows in the result table            (Integer)
                        This.ColumnNames := []         ; Names of columns in the result table          (Array)
                        This.Rows := []                ; Rows of the result table                      (Array of Arrays)
                        This.HasNames := False         ; Does var ColumnNames contain names?           (Bool)
                        This.HasRows := False          ; Does var Rows contain rows?                   (Bool)
                        This._CurrentRow := 0          ; Row index of last returned row                (Integer)

                    }

                GetRow(RowIndex, ByRef Row)
                    /*

                        METHOD GetRow      Get row for RowIndex
                        Parameters:        RowIndex    - Index of the row to retrieve, the index of the first row is 1
                                           ByRef Row   - Variable to pass out the row array
                        Return values:     On failure  - False
                                           On success  - True, Row contains a valid array
                        Remarks:           _CurrentRow is set to RowIndex, so a subsequent call of NextRow() will return the
                                           following row.

                    */
                    {

                        Row := ""
                        If (RowIndex < 1 || RowIndex > This.RowCount)
                            Return False
                        If !This.Rows.HasKey(RowIndex)
                            Return False
                        Row := This.Rows[RowIndex]
                        This._CurrentRow := RowIndex
                        Return True

                    }

                Next(ByRef Row)
                    /*

                        METHOD Next        Get next row depending on _CurrentRow
                        Parameters:        ByRef Row   - Variable to pass out the row array
                        Return values:     On failure  - False, -1 for EOR (end of rows)
                                           On success  - True, Row contains a valid array

                    */
                    {

                        Row := ""
                        If (This._CurrentRow >= This.RowCount)
                            Return -1
                        This._CurrentRow += 1
                        If !This.Rows.HasKey(This._CurrentRow)
                            Return False
                        Row := This.Rows[This._CurrentRow]
                        Return True

                    }

                Reset()
                    /*

                        METHOD Reset       Reset _CurrentRow to zero
                        Parameters:        None
                        Return value:      True

                    */
                    {

                        This._CurrentRow := 0
                        Return True

                    }

            }
    }

some_label:
    escpae::exitapp
    return

; continuation section
    ; #1 expression syntax (recommended)
        a_var := ": - )"
        text := "
            (LTrim RTrim0 Com Join`n %
            variable references such as %a_var% are not resolved. ; comment
            Instead, specify variables as follows: ; comment
            " A_Now " ; commment
            )"



        ; expression syntax with associative array
        fn_task(a,b,c)
            {
                return a . b . c
            }

        arr :=
            (LTrim Com Join,
            {   _   : 0
            ;
            ; note that empty lines must be commented
            ;
                0   : v_1 := "really"           ; comment
                1   : v_2 := 44                 ; comment
                2   : fn_task(v_1, v_2, 666)    ; comment
            ;
                _   : 0 }
            )

    ; #2 assignment syntax (deprecated)
        text = 
            (LTrim RTrim0 Com Join`n ; %

            Line one                                    ; comment
            ;
            `; Line two has escaped comment char        ; comment
            ;
            ;
            ; line 3 has right padding (it must not contain comment in order to be accounted in)
            Line three               
            ;
            ;
            Line five   `%A_UserName`%
            Line six    %A_UserName%

            )



        ; assignment syntax (json like string)
        html_colors=
            (LTrim Com Join,
            { couples : [0x2385B
                0x2385B8
                0x48564
                0x418447
                0x091ff
                0x00fF91
                0x35598
                0x445547] }
            )

    clipboard := text
        . "`n-------`n`n`n`n" html_colors
        . "`n-------`n`n`n`n" arr.2

    ; #3 command continuation syntax
        MsgBox,64,Hello, ; The trailing comma is required in this case.
            (LTrim Com Join`n
            Line 1 of the text.
            Line 2 of the text. By default, a linefeed (`n) is present between lines.
            ), 1
