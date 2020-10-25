unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,Unit3;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form2: TForm2;

implementation
        uses
          Unit1;
{$R *.lfm}

{ TForm2 }

procedure TForm2.FormCreate(Sender: TObject);
begin
  label2.Caption:=#13#10 ;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
 form2.Hide;
 form1.Show;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  form2.Hide;
  form3.Show;
end;




























end.

