



program phy_calc_q2;
uses 
    math;
var    
    i,{current}
    R,{radius}
    b,{magnetic field}
    u0{constant}
    : double;
begin
    u0:=4*pi*power(10,-7);{T*m / A}
    writeln('input radius and current');
    readln(R,i);
    R:=R/100;{convert cm to m}
    
    b:=(u0 * i)/(2*R);
    b:=b*power(10,6);
    
    
    writeln('The magnetic field is ', b:6:6, ' uT');
end.

