



program phy_calc_q7;
uses 
    math;
var
    n,{turns per unit area}
    length,
    u0,{constant}
    A,{area}
    H{inductance}
    : double;
begin
    u0:=4*pi*power(10,-7);
    writeln('input solenoid length, number of turns, and Area.');
    readln(length,n,A);
    length:=length/100;
    A:=A*power(10,-4);
    
    n:=n/length;
    H:=sqr(n)*u0*A*length;
    H:=H*power(10,6);
    writeln('The inductance is: ',H:6:6,' uH. ')
end.

