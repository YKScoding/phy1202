



program phy_calc_q1;
uses 
    math;
var    
    i1,{current}
    d,{distance}
    b1,{magnetic field}
    u0{constant}
    : double;
begin
    u0:=4*pi*power(10,-7);{T*m / A}
    writeln('input current and distance');
    readln(i1,d);
    
    b1:=(u0*i1)/(2*pi*d);
    
    b1:=b1*power(10,6);
    b1:=b1*2;
    {since distance and current are the same}
    
    writeln('The magnetic field is ', b1:6:6, ' uT');
end.

