program mini;

{$R *.res}

uses Windows;

begin
  Keybd_event(VK_LWIN,0,0,0);
  Keybd_event(Ord('M'),0,0,0);
  Keybd_event(Ord('M'),0,KEYEVENTF_KEYUP,0);
  Keybd_event(VK_LWIN,0,KEYEVENTF_KEYUP,0);
end.
