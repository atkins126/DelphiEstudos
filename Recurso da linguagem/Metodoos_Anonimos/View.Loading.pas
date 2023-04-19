unit View.Loading;

interface

uses
  System.SysUtils;

type

  TLoadingProgress = procedure ( aValuae : Integer ) of Object;

  TLoading = class
    private
//    FOnLoading: TLoadingProgress;
    FOnLoadingProgress : TLoadingProgress;
    procedure SetOnLoading(const Value: TLoadingProgress);
    procedure SetOnLoadingProgress(const Value: TLoadingProgress);

    public
         procedure Preencher;
         procedure FazIsso( aValue : TProc<Integer>);
         property OnLoadingProgress : TLoadingProgress read FOnLoadingProgress write SetOnLoadingProgress;

  end;

implementation

uses
  Winapi.Windows;

{ TLoading }

procedure TLoading.FazIsso( aValue : TProc<Integer>);
begin
  aValue(10);
end;

procedure TLoading.Preencher;
var
  I: Integer;
begin

  for I := 1 to 100 do
  begin
   Sleep(10);
   if Assigned(FOnLoadingProgress) then
      FOnLoadingProgress(I);

  end;


end;


procedure TLoading.SetOnLoading(const Value: TLoadingProgress);
begin
  FOnLoadingProgress := Value;
end;

procedure TLoading.SetOnLoadingProgress(const Value: TLoadingProgress);
begin
  FOnLoadingProgress := Value;
end;

end.
