@echo off
%~d0
CD %~dp0

del /s /f /q C:\Windows\Prefetch\*.*

exit
