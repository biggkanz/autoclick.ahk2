; general purpose autoclick script
; AutoHotkey_2.0-beta.3
#maxthreadsperhotkey 2 ; allow one extra thread to break out of loops
A_MaxHotkeysPerInterval := 500
A_HotkeyInterval := 1000

global AutoClickIsEnabled := false

; activates auto click
autoMouseClick()
{
	if (!AutoClickIsEnabled)
	{
		global AutoClickIsEnabled := true
		while (AutoClickIsEnabled)
		{
		Sleep 500
		Click
		}
	}
	else
	{
		global AutoClickIsEnabled := false
	}
}

disableAutoClick()
{
	if(AutoClickIsEnabled)
	{
		global AutoClickIsEnabled := false
	}
}

~PgUp::autoMouseClick()
~LButton::disableAutoClick()

; F9 key will toggle suspend
#SuspendExempt
F9::Suspend -1