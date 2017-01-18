:: Устанавливаем текущую директорию - путь к файлу скрипта
:: Это нужно из-за того что для файлов проектов используются относительные пути 
:: и скрипт должен выполнятся одинаково независимо от того где и как он запускается. 
cd %~dp0

:: Устанавливаем переменные для сборки Delphi 2010
call "%delphi2010_path%rsvars.bat" 

:: Запускаем команду Clean для - удаление результатов предыдущей сборки (dcu, exe)
c:\Windows\Microsoft.NET\Framework\v3.5\MSBuild.exe "Project1.dproj" /target:Clean /p:config="Release"

:: Если произошла ошибка то сразу выходим не выполняя следующие команды  
if not %ERRORLEVEL% == 0 exit %ERRORLEVEL%

:: Собираем проекта, кофигурация сборки Release
c:\Windows\Microsoft.NET\Framework\v3.5\MSBuild.exe "Project1.dproj" /target:Build /p:config="Release"
if not %ERRORLEVEL% == 0 exit %ERRORLEVEL%

pause

:: Дальше можно собрать проект для другой версии Delphi
:: Устанавливаем переменные для сборки XE6
::call "%delphiXE6_path%rsvars.bat" 
::
::c:\Windows\Microsoft.NET\Framework\v3.5\MSBuild.exe "ProjectXE6.dproj" /target:Clean /p:config="Release"
::if not %ERRORLEVEL% == 0 exit %ERRORLEVEL%
::c:\Windows\Microsoft.NET\Framework\v3.5\MSBuild.exe "ProjectXE6.dproj" /target:Build /p:config="Release"
::if not %ERRORLEVEL% == 0 exit %ERRORLEVEL%