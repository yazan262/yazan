unit Unit3;

{$mode objfpc}{$H+}

{------------------------------------------------------------
Autor: xxxxx
Thema: yyyy  - hier leeres OpenGL-Projekt
-------------------------------------------------------------}


interface

uses
  Classes, SysUtils, FileUtil, OpenGLContext, Forms, Controls, Graphics,
  Dialogs, ExtCtrls, StdCtrls, GLU, GL;     // GLU und GL ergänzt

type

  { TForm3 }

  { TForm3 }

  TForm3 = class(TForm)
    ApplicationProperties: TApplicationProperties;
    ComboBox1: TComboBox;
    OnApp: TApplicationProperties;
    OpenGLControl1: TOpenGLControl;
    StaticText1: TStaticText;
    procedure FormCreate(Sender: TObject);
    procedure OnAppIdle(Sender: TObject; var Done: Boolean);
    procedure OpenGLControl1Click(Sender: TObject);
    procedure OpenGLControl1Paint(Sender: TObject);
    procedure OpenGLControl1Resize(Sender: TObject);
    procedure StaticText1Click(Sender: TObject);
    procedure StaticText1MouseEnter(Sender: TObject);
    procedure StaticText1MouseLeave(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form3: TForm3;

implementation
uses
  unit2;
{$R *.lfm}

{ TForm3 }

procedure TForm3.FormCreate(Sender: TObject);
begin
  Application.AddOnIdleHandler(@OnAppIdle);
end;

procedure TForm3.OnAppIdle(Sender: TObject; var Done: Boolean);
begin
  Done:=False;
  OpenGLControl1.Invalidate;
end;

procedure TForm3.OpenGLControl1Click(Sender: TObject);
begin

end;

procedure TForm3.OpenGLControl1Paint(Sender: TObject);
VAR Breite,Hoehe : Integer;
begin
  // Viewport
  Breite:=OpenGLControl1.Width;
  Hoehe:=OpenGLControl1.Height;
  glViewport(0,0,Breite,Hoehe);
  // --- Hintergrundfarbe
  glClearColor(0.0,0.0,0.0,0.0); // Schwarz
  glClear(GL_COLOR_BUFFER_BIT OR GL_DEPTH_BUFFER_BIT);

  // Normalenbezug und Normalenberechnung
  glEnable(GL_NORMALIZE);

  // Projektionsmatrix
  glMatrixMode(GL_PROJECTION);
  glLoadIdentity();

  // --- Festlegung der Projektion
  gluPerspective(45,(Breite/Hoehe),0.1,100.0);   // Winkel über Y, Breite/Höhe, nahes Z, fernes Z
  // --- Transformation der Projektmatrix
  // xxx hier Transformationsbefehle setzen (Drehung, Bewegung, Skalierung)

  //Modellmatrix
  glMatrixMode(GL_MODELVIEW);
  glLoadIdentity();

  // --- Tiefenpuffer einstellungen vornehmen
  glEnable(GL_DEPTH_TEST);    // oder glDisable(GL_DEPTH_TEST);

  // --- Lichteinstellungen
  // xxx hier die Lichteinstellung vornehmen

  // --- Kameraposition festlegen
  gluLookAt(0.0,0.0,2.0,0.0,0.0,0.0,0.0,1.0,0.0);  // xyz-Werte zu Kamera,Blick,Normale

  // --- Transformation des Objekts
  // xxx hier Transformationsbefehle setzen (Drehung, Bewegung, Skalierung)

  // --- Polygonmodus einstellen
  glPolygonMode(GL_FRONT_AND_BACK,GL_FILL);

  // --- Textur laden
  // xxx hier die Befehle zur Erzeugung der Textur eingeben

  // --- Objekt erzeugen
  // xxx hier die Befehle zur Erzeugung des Objekts eingeben
  case combobox1.ItemIndex of
  0:
    begin
    glpointsize(100);
    glbegin(GL_POINTS);
    glvertex2f(0,0);
    glend;
     end;
  1: Begin
     glbegin(gl_lines);
     glvertex2f(-0.5,0);
     glvertex2f(0.5,0);
     glend;
  end;

  end;

  // --- Freigabe der Textur
  // xxx hier die Befehle zur Texturfreigabe eingeben

  // --- Beeinflussung der Transformation
  // xxx hier die Befehle zur Transformationsänderung eingeben

  // Zeichnen-Operation ausführen -
  glFlush();

  // Bildschirmausgabe aktualisieren
  OpenGLControl1.SwapBuffers;
end;

procedure TForm3.OpenGLControl1Resize(Sender: TObject);
begin
  IF OpenGLControl1.Height <= 0 THEN Exit;
end;

procedure TForm3.StaticText1Click(Sender: TObject);
begin
 statictext1.Visible:=false;
  ComboBox1.Visible:=true;
end;

procedure TForm3.StaticText1MouseEnter(Sender: TObject);
begin
   statictext1.Font.Style:=[fsBold];
end;

procedure TForm3.StaticText1MouseLeave(Sender: TObject);
begin
  statictext1.Font.Style:=[];
end;
















end.

