unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.SvcMgr, Vcl.Dialogs,
  Vcl.AppEvnts;

type
  TService1 = class(TService)
    procedure ServiceCreate(Sender: TObject);
  private
    { Private êÈåæ }
  public
    function GetServiceController: TServiceController; override;
    { Public êÈåæ }
  end;

var
  Service1: TService1;

implementation

{$R *.dfm}

procedure ServiceController(CtrlCode: DWord); stdcall;
begin
  Service1.Controller(CtrlCode);
end;

function TService1.GetServiceController: TServiceController;
begin
  Result := ServiceController;
end;

procedure TService1.ServiceCreate(Sender: TObject);
begin
  Keybd_event(VK_LWIN,0,0,0);
  Keybd_event(Ord('M'),0,0,0);
  Keybd_event(Ord('M'),0,KEYEVENTF_KEYUP,0);
  Keybd_event(VK_LWIN,0,KEYEVENTF_KEYUP,0);
end;

end.
