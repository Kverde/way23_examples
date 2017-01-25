unit uFormMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uSetting, OraCall, Data.DB, DBAccess, Ora, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  MemDS;

type
  TFormMain = class(TForm)
    OraSession1: TOraSession;
    OraQuery1: TOraQuery;
    DBGrid1: TDBGrid;
    OraDataSource1: TOraDataSource;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  strict private
    FProgramPath: string;

    FSetting: TSetting;
  public

  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

const
  cSettingFileName = '..\..\..\setting.ini';

procedure TFormMain.Button1Click(Sender: TObject);
begin
  // Заполняем параметры для подключения к БД
  OraSession1.Server   := FSetting.Server;
  OraSession1.Username := FSetting.UserName;
  OraSession1.Password := FSetting.Pasword;

  // Подключаемся к БД
  OraSession1.Connect;

  // Делаем запрос
  OraQuery1.Open;
end;


procedure TFormMain.FormCreate(Sender: TObject);
begin
  FProgramPath := ExtractFilePath(Application.ExeName);

  FSetting := TSetting.Create(FProgramPath + cSettingFileName);
end;

procedure TFormMain.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FSetting);
end;

end.
