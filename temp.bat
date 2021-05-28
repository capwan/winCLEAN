@echo off
%~d0
CD %~dp0
	del "%tmp%\*.*" /s /q /f
	FOR /d %%p IN ("%tmp%\*.*") DO rmdir "%%p" /s /q
        del "C:\Windows\Temp" /s /q /f
        FOR /d %%p IN ("C:\Windows\Temp\*.*") DO rmdir "%%p" /s /q

exit