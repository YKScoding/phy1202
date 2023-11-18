



program phy_calc_q8;
uses 
    math;
var
    n,{turns per unit area}
    time,
    flux,
    B,
    r,{radius}
    u0,{constant}
    A,{area}
    V{voltage; emf}
    : double;
begin
    u0:=4*pi*power(10,-7);
    writeln('input number of turns, B-field increase to, time, and radius.');
    readln(n,B,time,r);
    
    {B:=u0*i*n;}
    A:=pi*sqr(r);
    flux:=B*A;{-(B_initial*A), which is 0}
    {emf = -delta(N*Flux)/deltaT}
    n:=n/A;
    V:=(flux*n)/time;
    {-N can be abs()'ed since the question is asking for magnitude only.}
    {TODO: make it correct...}
    
    writeln('The flux is: ',flux:6:6,' . ');
    writeln('The emf is: ',V:6:6,' V. ')
end.
