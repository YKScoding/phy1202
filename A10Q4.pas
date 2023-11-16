



program phy_calc_q4;
uses 
    math;
var    
    i,{current}
    r,{radius}
    d,{distance}
    b,{magnetic field}
    rx,{intermediate}
    u0{constant}
    : double;
begin
    u0:=4*pi*power(10,-7);{T*m / A}
    
    writeln('input radius, current, distance');
    readln(r,i,d);
    r:=r/100;{also convert cm to m}
    d:=d/100;{convert cm to m}
    rx:=2*power(sqr(r)+sqr(d/2),3/2);
    b:=(u0*i*r)/rx;
    
    b:=b*2;
    b:=b*power(10,5);
    writeln('The magnitude of the B-field is ', b:6:6, ' x 10^-5 T');
end.

