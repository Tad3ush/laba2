program laba2;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Math;

var
  k,n:integer;
  x,s,f:real;

begin
  x := 0.6;
  repeat
    n := 10;
    repeat
      s := 0;
      k := 1;
      repeat
        s := s + ((k - 1) / k) + exp(abs(cos(k) * x));
        k := k + 1
      until k > n;
      f := (power(n * power(x,1 / 2),(1 / 3))) - s;
      writeln('N=',n:4,' X=',x:6:2,' F=',f:9:4);
      n := n + 1
    until n > 15;
    x := x + 0.25
  until x > 1.11;
  readln;
end.
