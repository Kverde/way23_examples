cd %~dp0

del _IncludeBuildInfo.inc

chcp 1251

rem Get revision

svn info | find /i "Last Changed Rev">__rev.txt 

SET /p rev=<__rev.txt
SET rev=%rev:~18%

del __rev.txt

rem create include

del _IncludeBuildInfo.inc

echo const cRevision = '---WCREV---'; cBuildInfo = 'BuildDate: "%DATE% %TIME%"; User: "%USERNAME%"; COMPUTERNAME: "%COMPUTERNAME%"';>> _IncludeBuildInfo.inc

reFind.exe _IncludeBuildInfo.inc "/P:---WCREV---" "/R:%rev%" /B:2 

rem create res

del version.rc

copy version.rc.tmpl version.rc

reFind.exe version.rc "/P:---WCREV---" "/R:%rev%" /B:2

BRCC32.exe -w32 -v -c1251 -m  "%~dp0version.rc" -foversion
