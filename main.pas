program ShowTime;

uses
  SysUtils, DateUtils;

var
  TimeZoneOffset: Integer;  // Displacement from UTC in hours
  CurrentTime: TDateTime;
  TimeStr, DateStr: string;

begin
  Write('write displacement from UTC (example, -3, 2, 0): ');
  ReadLn(TimeZoneOffset);

  // While cycle
  while True do
  begin
    CurrentTime := Now;

    CurrentTime := IncHour(CurrentTime, TimeZoneOffset);

    TimeStr := TimeToStr(CurrentTime);
    DateStr := DateToStr(CurrentTime);

    // Clear screen
    WriteLn(#27'[2J');  // ANSI escape code for clear screen

    WriteLn('Date: ', DateStr);
    WriteLn('Time: ', TimeStr);
    
    // Sleep 1 second
    Sleep(1000);
  end;
end.
