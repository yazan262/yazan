unit Unit1;

{$mode objfpc}{$H+}

{------------------------------------------------------------
Autor: xxxxx
Thema: yyyy  - hier leeres OpenGL-Projekt
-------------------------------------------------------------}


interface

uses
  Classes, SysUtils, FileUtil, OpenGLContext, Forms, Controls, Graphics,
  Dialogs, ExtCtrls, GLU, GL;     // GLU und GL ergänzt

type

  { TForm1 }

  TForm1 = class(TForm)
    OnApp: TApplicationProperties;
    OpenGLControl1: TOpenGLControl;
    procedure FormCreate(Sender: TObject);
    procedure OnAppIdle(Sender: TObject; var Done: Boolean);
    procedure OpenGLControl1Paint(Sender: TObject);
    procedure OpenGLControl1Resize(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  Application.AddOnIdleHandler(@OnAppIdle);
end;

procedure TForm1.OnAppIdle(Sender: TObject; var Done: Boolean);
begin
  Done:=False;
  OpenGLControl1.Invalidate;
end;

procedure TForm1.OpenGLControl1Paint(Sender: TObject);
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
  gluLookAt(0.0,0.0,1.0,0.0,0.0,0.0,0.0,1.0,0.0);  // xyz-Werte zu Kamera,Blick,Normale

  // --- Transformation des Objekts
  // xxx hier Transformationsbefehle setzen (Drehung, Bewegung, Skalierung)

  // --- Polygonmodus einstellen
  glPolygonMode(GL_FRONT_AND_BACK,GL_FILL);

  // --- Textur laden
  // xxx hier die Befehle zur Erzeugung der Textur eingeben

  // --- Objekt erzeugen
  // xxx hier die Befehle zur Erzeugung des Objekts eingeben


 glbegin(GL_POINTS);
     GLvertex2f(0.9,0.9);
 GLEnd;

  // --- Freigabe der Textur
  // xxx hier die Befehle zur Texturfreigabe eingeben

  // --- Beeinflussung der Transformation
  // xxx hier die Befehle zur Transformationsänderung eingeben

  // Zeichnen-Operation ausführen -
  glFlush();

  // Bildschirmausgabe aktualisieren
  OpenGLControl1.SwapBuffers;
end;

procedure TForm1.OpenGLControl1Resize(Sender: TObject);
begin
  IF OpenGLControl1.Height <= 0 THEN Exit;
end;

end.

