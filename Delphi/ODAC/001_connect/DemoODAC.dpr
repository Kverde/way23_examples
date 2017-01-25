program DemoODAC;

uses
  Vcl.Forms,
  uFormMain in 'uFormMain.pas' {FormMain},
  uSetting in 'uSetting.pas';

{$R *.res}

begin
  {$IfDef DEBUG}
	  // Обязательно первой строкой!
  	ReportMemoryLeaksOnShutdown := True;
  {$EndIf}

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
