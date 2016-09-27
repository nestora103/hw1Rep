unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Math;

type
  TForm1 = class(TForm)
    btn1: TButton;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    Sum: TLabel;
    mmo1: TMemo;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
var
  max:cardinal;
  
  matrixColNumber:Cardinal;
  matrixRowNumber:Cardinal;

  calcStep:Cardinal;

  i:Cardinal;
  j:Cardinal;

  k:Cardinal;

  iNum:Cardinal;
  iVal:Cardinal;
  step:Cardinal;

  sumDiag:integer;

  sum:Cardinal;
begin
   matrixColNumber:=StrToInt(Form1.edt1.Text);
   matrixRowNumber:=StrToInt(Form1.edt2.Text);
   max:=matrixColNumber*matrixRowNumber;

   sumDiag:=1;
   sum:=1;
   step:=1;
   iNum:=0;
   iVal:=1;
   j:=2;
   k:=1;

   //x:=exp(b*ln(a));
   //x = a в степени b
   //x:=exp(j*ln(2));

   Form1.mmo1.Lines.Add('1');

   while iVal<max do
   begin

    //sumDiag:=0;
    for k:=1 to 4 do
    begin
      step:={trunc(exp(j*ln(2)))}j;
      sumDiag:=sumDiag+(sum+step);
      sum:=sum+step;
      Form1.mmo1.Lines.Add(IntToStr(sum));
      inc(iNum);
    end;
    iVal:=sum;
    j:=j+2;
   end;

   Form1.edt3.Text:=IntToStr(sumDiag);

end;

end.
