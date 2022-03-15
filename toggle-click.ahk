#maxthreadsperhotkey 2
Toggle := 0

CapsLock::
Toggle := !Toggle
{
	If Toggle
		Click, down	
	Else
		Click, up
}
Return

^!r::Reload  ; Ctrl+R (reload)
Return

