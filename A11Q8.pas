



program phy_calc_q8;
uses 
    math;
var
    n,{turns per unit area}
    time,
    t,
    flux,
    target,{target b field}
    B,
    r,{radius}
    u0,{constant}
    A,{area}
    V{voltage; emf}
    : double;
begin
    u0:=4*pi*power(10,-7);
    writeln('input number of turns, B-field increase to, time, and radius.');
    readln(n,target,time,r);
    
    {B:=u0*i*n;}
    t:=0;
    B:=0;
    repeat begin
    B:=target;
    A:=pi*sqr(r);
    flux:=B*A;
    B:=B+0.1;
    t:=t+0.1;
    end;
    until (B = target) or (t = time);
    
    {TODO: make it correct...}
    
    writeln('The flux is: ',flux:6:6,' . ')
end.

