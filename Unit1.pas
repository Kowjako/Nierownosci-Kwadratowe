unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, acTitleBar, sSkinManager, Vcl.StdCtrls,
  sComboBox, sEdit, sLabel, sButton, sGroupBox, Vcl.ExtCtrls, acImage, acPNG;

type
  TForm1 = class(TForm)
    sSkinManager1: TsSkinManager;
    sTitleBar1: TsTitleBar;
    sEdit1: TsEdit;
    sEdit2: TsEdit;
    sEdit3: TsEdit;
    sComboBox1: TsComboBox;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    sGroupBox1: TsGroupBox;
    sGroupBox2: TsGroupBox;
    sGroupBox3: TsGroupBox;
    sButton1: TsButton;
    sButton2: TsButton;
    sButton3: TsButton;
    sLabel4: TsLabel;
    sLabel5: TsLabel;
    sLabel6: TsLabel;
    sLabel7: TsLabel;
    sLabel8: TsLabel;
    sLabel9: TsLabel;
    sImage1: TsImage;
    sLabel10: TsLabel;
    sLabel11: TsLabel;
    sLabel12: TsLabel;
    sLabel13: TsLabel;
    sLabel14: TsLabel;
    sLabel15: TsLabel;
    sLabel16: TsLabel;
    sLabel17: TsLabel;
    procedure sTitleBar1Items1Click(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure sButton3Click(Sender: TObject);
    procedure sButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.sButton1Click(Sender: TObject);
begin
sLabel4.Caption:='Дискриминант - ';
sLabel6.Caption:='D = ';
sLabel5.Caption:='Корни - ';
sLabel7.Caption:='X1 ➝ ';
sLabel8.Caption:='X2 ➝ ';
sLabel9.Caption:='Х ∈ ';
sLabel10.Caption:=' ';
sLabel11.Caption:=' ';
sLabel12.Caption:=' ';
sLabel13.Caption:=' ';
sLabel14.Caption:=' ';
sLabel15.Caption:=' ';
sLabel16.Caption:=' ';
sLabel17.Caption:=' ';
sImage1.Picture:=nil;
end;

procedure TForm1.sButton2Click(Sender: TObject);
begin
close();
end;

procedure TForm1.sButton3Click(Sender: TObject);
var a,b,c,D:integer;
    x1,x2,k:real;
begin
a:=StrToInt(sEdit1.Text);
b:=StrToInt(sEdit2.Text);
c:=StrToInt(sEdit3.Text);
D:=b*b-4*a*c;
if(D>0) then
Begin   //////D>0////////
 sLabel4.Caption:='Дискриминант - Есть';
 sLabel6.Caption:='D = '+IntToStr(D);
 sLabel5.Caption:='Корни - 2';
 x1 := (-b+sqrt(D))/(2*a);
 x2 := (-b-sqrt(D))/(2*a);
 sLabel7.Caption:='X1 ➝ '+FloatToStr(x1);
 sLabel8.Caption:='X2 ➝ '+FloatToStr(x2);
 if(a>0) then
 //////////a>0///////////////
 Begin
  if(x1>x2) then Begin
    sLabel11.Caption:=FloatToStr(x2);
    sLabel12.Caption:=FloatToStr(x1);
  End else
  Begin
   k:=x2;
   x2:=x1;
   x1:=k;
   sLabel11.Caption:=FloatToStr(x2);
   sLabel12.Caption:=FloatToStr(x1);
  End;
  if (sCombobox1.text='>') then
  Begin
     sImage1.Picture.loadfromfile('2n.png');
     sLabel13.Caption:='+';
     sLabel14.Caption:='+';
     sLabel15.Caption:='-';
     sLabel9.Caption:='X ∈ (-∞;'+FloatToStr(x2)+') U ('+FloatToStr(x1)+';+∞)';
  End;
  if (sCombobox1.Text='>=') then
  Begin
  sImage1.Picture.loadfromfile('2e.png');
     sLabel13.Caption:='+';
     sLabel14.Caption:='+';
     sLabel15.Caption:='-';
     sLabel9.Caption:='X ∈ (-∞;'+FloatToStr(x2)+'] U ['+FloatToStr(x1)+';+∞)';
  End;
  if (sCombobox1.Text='<') then
  Begin
   sImage1.Picture.loadfromfile('2n.png');
     sLabel13.Caption:='+';
     sLabel14.Caption:='+';
     sLabel15.Caption:='-';
     sLabel9.Caption:='X ∈ ('+FloatToStr(x2)+';'+FloatToStr(x1)+')';
  End;
    if (sCombobox1.Text='<=') then
    Begin
    sImage1.Picture.loadfromfile('2e.png');
     sLabel13.Caption:='+';
     sLabel14.Caption:='+';
     sLabel15.Caption:='-';
     sLabel9.Caption:='X ∈ ['+FloatToStr(x2)+';'+FloatToStr(x1)+']';
    End;
 End;
 if (a<0) then
 Begin ///a<0//
 if(x1>x2) then Begin
    sLabel11.Caption:=FloatToStr(x2);
    sLabel12.Caption:=FloatToStr(x1);
  End else
  Begin
   k:=x2;
   x2:=x1;
   x1:=k;
   sLabel11.Caption:=FloatToStr(x2);
   sLabel12.Caption:=FloatToStr(x1);
  End;
  if (sCombobox1.text='>') then
  Begin
     sImage1.Picture.loadfromfile('2n.png');
     sLabel13.Caption:='-';
     sLabel14.Caption:='-';
     sLabel15.Caption:='+';
     sLabel9.Caption:='X ∈ ('+FloatToStr(x2)+';'+FloatToStr(x1)+')';
  End;
  if (sCombobox1.Text='>=') then
  Begin
  sImage1.Picture.loadfromfile('2e.png');
     sLabel13.Caption:='-';
     sLabel14.Caption:='-';
     sLabel15.Caption:='+';
     sLabel9.Caption:='X ∈ ['+FloatToStr(x2)+';'+FloatToStr(x1)+']';
  End;
  if (sCombobox1.Text='<') then
  Begin
   sImage1.Picture.loadfromfile('2n.png');
     sLabel13.Caption:='-';
     sLabel14.Caption:='-';
     sLabel15.Caption:='+';
     sLabel9.Caption:='X ∈ (-∞;'+FloatToStr(x2)+') U ('+FloatToStr(x1)+';+∞)';
  End;
    if (sCombobox1.Text='<=') then
    Begin
    sImage1.Picture.loadfromfile('2e.png');
     sLabel13.Caption:='-';
     sLabel14.Caption:='-';
     sLabel15.Caption:='+';
     sLabel9.Caption:='X ∈ (-∞;'+FloatToStr(x2)+'] U ['+FloatToStr(x1)+';+∞)';
    End;
 End;  ///a<0//
End;  //////D>0////////
 if (D=0) then
 Begin
 sLabel4.Caption:='Дискриминант - Есть';
 sLabel6.Caption:='D = 0';
 sLabel5.Caption:='Корни - 1';
 x1 := (-b)/(2*a);
 sLabel7.Caption:='X1 ➝ '+FloatToStr(x1);
 if(a>0) then    ////a>0////
 Begin
 if (sCombobox1.Text='>') then
  Begin
  sImage1.Picture.loadfromfile('1n.png');
  sLabel10.Caption:=FLoatToStr(x1);
  sLabel16.Caption:='+';
  sLabel17.Caption:='+';
  sLabel9.Caption:= 'X ∈ (-∞;'+FloatToStr(x1)+') U ('+FloatToStr(x1)+';+∞)';
  End;
  if (sCombobox1.Text='>=') then
  Begin
  sImage1.Picture.loadfromfile('1e.png');
  sLabel10.Caption:=FLoatToStr(x1);
  sLabel16.Caption:='+';
  sLabel17.Caption:='+';
  sLabel9.Caption:= 'X ∈ (-∞;+∞)';
  End;
  if (sCombobox1.Text='<') then
  Begin
  sImage1.Picture.loadfromfile('1n.png');
  sLabel10.Caption:=FLoatToStr(x1);
  sLabel16.Caption:='+';
  sLabel17.Caption:='+';
  sLabel9.Caption:= 'X ∈ Ø';
  End;
  if (sCombobox1.Text='<=') then
  Begin
  sImage1.Picture.loadfromfile('1e.png');
  sLabel10.Caption:=FLoatToStr(x1);
  sLabel16.Caption:='+';
  sLabel17.Caption:='+';
  sLabel9.Caption:= 'X = '+FloatToStr(x1);
  End;
 End;          ////a>0////
 if (a<0) then   ////a<0/////
 Begin
 if (sCombobox1.Text='>') then
 Begin
  sImage1.Picture.loadfromfile('1n.png');
  sLabel10.Caption:=FLoatToStr(x1);
  sLabel16.Caption:='-';
  sLabel17.Caption:='-';
  sLabel9.Caption:= 'X ∈ Ø' ;
 End;
 if (sCombobox1.Text='>=') then
 Begin
 sImage1.Picture.loadfromfile('1e.png');
  sLabel10.Caption:=FLoatToStr(x1);
  sLabel16.Caption:='-';
  sLabel17.Caption:='-';
  sLabel9.Caption:= 'X = '+FloatToStr(x1) ;
 End;
 if (sCombobox1.Text='<') then
 Begin
  sImage1.Picture.loadfromfile('1n.png');
  sLabel10.Caption:=FLoatToStr(x1);
  sLabel16.Caption:='-';
  sLabel17.Caption:='-';
  sLabel9.Caption:= 'X ∈ (-∞;'+FloatToStr(x1)+') U ('+FloatToStr(x1)+';+∞)' ;
 End;
 if (sCombobox1.Text='<=') then
 Begin
   sImage1.Picture.loadfromfile('1e.png');
  sLabel10.Caption:=FLoatToStr(x1);
  sLabel16.Caption:='-';
  sLabel17.Caption:='-';
  sLabel9.Caption:= 'X ∈ (-∞;+∞)' ;
 End;
 End;          /////a<0/////

 End;
 if (D<0)  then
  begin
  sLabel4.Caption:='Дискриминант - Нету';
 sLabel6.Caption:='D = '+inttostr(D);
 sLabel5.Caption:='Корни - 0';
  end;
end;

procedure TForm1.sTitleBar1Items1Click(Sender: TObject);
begin
Application.Title:='Quad-Interquality Final';
showmessage('This program made by Vladimir Kovyako inc.  ::Special Thanks to Vladimir Dragun::');
end;

end.
