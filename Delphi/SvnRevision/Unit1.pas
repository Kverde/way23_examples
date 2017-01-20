unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TForm1 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

// подключение ресурса для вывода номера ревиизии в свойствах файла
{$R version.RES}

// подключение файла с константой в которой номер ревизии
{$I '_IncludeBuildInfo.inc'}


implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  // используем константу из _IncludeBuildInfo.inc
  Caption := cRevision;
end;

end.
