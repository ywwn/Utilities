#SingleInstance force
Pause::ExitApp()

$XButton1::
{
while GetKeyState("XButton1", "P")
{
    Send "{Click}"
    Sleep(300)
}
return
}
