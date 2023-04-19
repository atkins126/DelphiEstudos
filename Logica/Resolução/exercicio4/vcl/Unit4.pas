unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  sequencia = Array[1..100] of integer;
  intercala = Array[1..200] of integer;

  TForm4 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    procedure Button1Click(Sender: TObject);
  private

  public
    function RetSequencia(Value : integer; vLista : String) : sequencia;
    function RetIntercala(m,n : Integer; seq1, seq2 : sequencia) : String;
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
var
  m,n : integer;
begin
  m := StrToInt(Edit1.Text);
  n := StrToInt(Edit2.Text);

  Edit5.Text := RetIntercala( m, n,
          RetSequencia(m, Edit3.Text),
          RetSequencia(n, Edit4.Text));
end;

function TForm4.RetIntercala(m,n : Integer; seq1, seq2 : sequencia) : String;
var
  I, v1,v2,v3 : Integer;
  lIntercala : intercala;
begin
  v1 := 1;
  v2 := 1;
  v3 := 0;

  Result := '';

  while (v1<m) and (v2<n) do begin
    if (seq1[v1] < seq2[v2]) then begin
      inc(v3);
      lIntercala[v3] := seq1[v1];
      inc(v1);
    end else
    if (seq1[v1] > seq2[v2]) then begin
      inc(v3);
      lIntercala[v3] := seq2[v2];
      inc(v2);
    end else begin
      inc(v3);
      lIntercala[v3] := seq1[v1];
      inc(v1);
      inc(v2);
    end;
  end;

  while (v1 <= m) do begin
    inc(v3);
    lIntercala[v3] := seq1[v1];
    inc(v1);
  end;

  while (v2 <= n) do begin
    inc(v3);
    lIntercala[v3] := seq2[v2];
    inc(v2);
  end;

  for I := 1 to v3 do
    Result := Result+' '+IntToStr(lIntercala[I]);
end;

function TForm4.RetSequencia(Value : integer; vLista : String) : sequencia;
var
  I,aux: Integer;
  lList : TStringList;
begin
  lList := TStringList.Create;
  try
    lList.Delimiter := ',';
    lList.StrictDelimiter := true;
    lList.DelimitedText := vLista;

    aux := 1;
    for I := 0 to lList.Count-1 do
    begin
      if aux<=value then
        Result[aux] := StrToInt(lList.Strings[I]);
      inc(aux);
    end;

  finally
    lList.Free;
  end;
end;

end.
