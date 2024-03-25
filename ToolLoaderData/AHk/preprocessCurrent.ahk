#SingleInstance force
/** Execute hotkey in ZBRUSH
 */
preprocessCurrent()
{

	;;MsgBox,262144,TEST, executeKeyboardShortcutInZbrush,3

	if( $zbrush_window	:= WinExist( "ahk_exe ZBrush.exe" ) )
	{
		WinActivate, ahk_exe ZBrush.exe

		/*
			Execute command "~VIL-PLUGINS:MaxZbrushSync:Max to Zbrush" in "../../Zbrush/MaxZbrushSync.txt"
		*/
		Send, {Ctrl Down}{Shift Down}{F8}{Ctrl Up}{Shift Up}
	}
}



Run *RunAs "C:\GoogleDrive\ProgramsData\CG\ZBrush\Plugins\INSTALLED\ToolLoader\ToolLoaderData\Ahk\waitFoPreprocessAndExecuteDecimation.ahk"
;preprocessCurrent()
