unit frmMain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnGenerate: TButton;
    edtBase: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    lblResult: TLabel;
    procedure btnGenerateClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnGenerateClick(Sender: TObject);
var
  index: integer;
  base: integer;
begin
 base := strToInt (edtBase.caption);
 lblResult.caption := 'The division table of ' + intToStr(base) + ' divided by 1 - 20 is' + #10#13 + #10#13;
  for index := 1 to 20 do
 begin
   lblResult.caption := lblResult.caption + intToStr (base) + ' / ' + intToStr (index) + ' = ' + FloatToStr ((base / index)) + #10#13;
 end;

 end;
end.
