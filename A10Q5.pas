



program phy_calc_q5;
uses 
    math;
var    
    i,{current}
    d,{distance}
    d1,{distance from one wire}
    d2,{distance from other wire}
    b1,{magnetic field}
    b2,
    u0{constant}
    : double;
begin
    u0:=4*pi*power(10,-7);{T*m / A}
    writeln('input current and distance');
    readln(i,d,d1,d2);
    d:=d/100;
    d1:=d1/100;
    d2:=d2/100;
    
    b1:=(u0*i)/(2*pi*d1);
    b2:=(u0*i)/(2*pi*d2);
    

    {since distance and current are the same}
    
    writeln('The magnetic field is ', (b1-b2)*power(10,6):6:6, ' uT');
end.
