#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

$CapsLock:: ;When I press CapsLock
KeyWait, CapsLock, T0.5 ;Wait 0.5 seconds for CapsLock to be released
If ErrorLevel ;If Capslock wasn't release within 0.5 second
{
    if GetKeyState("CapsLock", "T") = 0
    SetCapsLockState on
    else 
    SetCapsLockState off
    Keywait, CapsLock ; indefinitely wait for the release
}
else Send {Alt Down}{Shift Down}{Shift Up}{Alt Up} 
Return
