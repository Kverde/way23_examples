:: ������������� ������� ���������� - ���� � ����� �������
:: ��� ����� ��-�� ���� ��� ��� ������ �������� ������������ ������������� ���� 
:: � ������ ������ ���������� ��������� ���������� �� ���� ��� � ��� �� �����������. 
cd %~dp0

:: ������������� ���������� ��� ������ Delphi 2010
call "%delphi2010_path%rsvars.bat" 

:: ��������� ������� Clean ��� - �������� ����������� ���������� ������ (dcu, exe)
c:\Windows\Microsoft.NET\Framework\v3.5\MSBuild.exe "Project1.dproj" /target:Clean /p:config="Release"

:: ���� ��������� ������ �� ����� ������� �� �������� ��������� �������  
if not %ERRORLEVEL% == 0 exit %ERRORLEVEL%

:: �������� �������, ����������� ������ Release
c:\Windows\Microsoft.NET\Framework\v3.5\MSBuild.exe "Project1.dproj" /target:Build /p:config="Release"
if not %ERRORLEVEL% == 0 exit %ERRORLEVEL%

pause

:: ������ ����� ������� ������ ��� ������ ������ Delphi
:: ������������� ���������� ��� ������ XE6
::call "%delphiXE6_path%rsvars.bat" 
::
::c:\Windows\Microsoft.NET\Framework\v3.5\MSBuild.exe "ProjectXE6.dproj" /target:Clean /p:config="Release"
::if not %ERRORLEVEL% == 0 exit %ERRORLEVEL%
::c:\Windows\Microsoft.NET\Framework\v3.5\MSBuild.exe "ProjectXE6.dproj" /target:Build /p:config="Release"
::if not %ERRORLEVEL% == 0 exit %ERRORLEVEL%