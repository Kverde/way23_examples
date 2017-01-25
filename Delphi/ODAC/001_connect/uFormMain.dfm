object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'FormMain'
  ClientHeight = 288
  ClientWidth = 416
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 416
    Height = 288
    Align = alClient
    DataSource = OraDataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 296
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object OraSession1: TOraSession
    Left = 144
    Top = 176
  end
  object OraQuery1: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'select * from ')
    Left = 80
    Top = 112
  end
  object OraDataSource1: TOraDataSource
    DataSet = OraQuery1
    Left = 176
    Top = 64
  end
end
