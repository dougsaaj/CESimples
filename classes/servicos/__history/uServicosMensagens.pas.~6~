unit uServicosMensagens;

interface

type
  ServicosMensagens = class
    public
      class procedure Release;
      class procedure Caption(caption: string);
      class procedure INFO(mensagem: string);
      class procedure WARNING(mensagem: string);
      class function QUESTION(mensagem: string):Boolean;
  end;

implementation

uses
  Forms,
  Windows,
  SysUtils,
  Vcl.StdCtrls,
  Graphics,
  Controls;

var
  vCaption: string;

{ Mensagens }

class procedure ServicosMensagens.Caption(caption: string);
begin
  vCaption := caption;
end;

class procedure ServicosMensagens.INFO(mensagem: string);
begin
  if vCaption = '' then
    vCaption    :=  'Curso Delphi - Oriontec';

  Application.MessageBox(PChar(mensagem), Pchar(vCaption), MB_OK+MB_ICONINFORMATION);
end;

class function ServicosMensagens.QUESTION(mensagem: string):Boolean;
begin
  if vCaption = '' then
    vCaption    :=  'Curso Delphi - Oriontec';

  if Application.MessageBox(PChar(mensagem), Pchar(vCaption), MB_YESNO+MB_ICONQUESTION) = idYes then
    Result  :=  True
  else
    Result  :=  False;
end;

class procedure ServicosMensagens.Release;
begin
  vCaption    :=  '';
end;

class procedure ServicosMensagens.WARNING(mensagem: string);
begin
  if vCaption = '' then
    vCaption    :=  'Curso Delphi - Oriontec';

  Application.MessageBox(PChar(mensagem), Pchar(vCaption), MB_OK+MB_ICONWARNING);
end;

end.
