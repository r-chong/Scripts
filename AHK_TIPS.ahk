#NoTrayIcon              ;if you don't want a tray icon for this AutoHotkey program.
#NoEnv                   ;Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance force    ;Skips the dialog box and replaces the old instance automatically
;;SendMode Input         ;I discovered this causes MouseMove to jump as if Speed was 0. (was Recommended for new scripts due to its superior speed and reliability.)
SetKeyDelay, 90          ;Any number you want (milliseconds)
CoordMode,Mouse,Screen   ;Initial state is Relative
CoordMode,Pixel,Screen   ;Initial state is Relative. Frustration awaits if you set Mouse to Screen and then use GetPixelColor because you forgot this line. There are separate ones for: Mouse, Pixel, ToolTip, Menu, Caret
MouseGetPos, xpos, ypos  ;Save initial position of mouse
WinGet, SavedWinId, ID, A     ;Save our current active window

;Set Up a Log File:
SetWorkingDir, %A_ScriptDir%  ;Set default directory to where this script file is located. (Note %% because it's expecting and unquoted string)
LogFile := "MyLog.txt"
FileAppend, This is a message`n, %LogFile%  ;Note the trailing (`n) to start a new line. This could instead be a leading (`n) if you want. (Note %% because it's expecting and unquoted string)
