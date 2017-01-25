unit uSetting;

interface


type
  TSetting = class
  strict private
    FServer   : string;
    FUserName : string;
    FPassword : string;

  public
    constructor Create(const ASettingFileName: string);

    property Server   : string read FServer;
    property UserName : string read FUserName;
    property Pasword  : string read FPassword;
  end;

implementation

uses
  SysUtils, IniFiles;

{ TSetting }

constructor TSetting.Create(const ASettingFileName: string);
var
  SysUtils, IniFile: TIniFile;
begin
  if not FileExists(ASettingFileName) then
    raise Exception.CreateFmt('Setting file "%s" not found', [ASettingFileName]);

  IniFile := TIniFile.Create(ASettingFileName);
  try
    FServer := IniFile.ReadString('main', 'Server', '');
    FUserName := IniFile.ReadString('main', 'UserName', '');
    FPassword := IniFile.ReadString('main', 'Password', '');
  finally
    FreeAndNil(IniFile);
  end;
end;

end.
