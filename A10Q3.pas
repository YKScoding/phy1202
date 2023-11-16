



program phy_calc_q3;
uses 
    math;
var    
    i,{current}
    r,{radius}
    d,{distance}
    b,{magnetic field}
    turns,
    n,
    u0{constant}
    : double;
begin
    u0:=4*pi*power(10,-7);{T*m / A}
    
    writeln('input current, length , and magnetic field');
    readln(i,d,b);
    
    d:=d/100;{convert cm to m}
    b:=b*power(10,-3);{convert mT to T}
    writeln('listing the equation: ');
    writeln('B = u0*i*n');
    writeln(b:2:2,' T = u0 x ',i:2:2,' A x n');
    
    {ideal solenoid is B=u0*i*n}
    n:=b/(u0*i);
    writeln(' n = ',n:2:2);
    turns:=n*d;

    
    
    writeln('The solenoid has ', turns:6:6, ' turns.');
end.

