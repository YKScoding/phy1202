



program phy_calc_q9;
uses 
    math;
var
    r,{radius}
    B,{B-field}
    incB,{rate of increase of B-field}
    d,{measured distance}
    u0,{constant}
    
    n,{turns per unit area}
    t,{time}
    i,{current}
    iinc,{increase in current}
    emf,
    E{induced E-field}
    :double;
begin
    u0:=4*pi*power(10,-7);
    writeln('input diameter, B-field, rate of increase, measured distance. ');
    readln(r,B,incB,d);
    
    r:=r/2; {change diameter to radius}
    r:=r/100;  {change radius into meter}
    B:=B*power(10,-3);  {change mT to T}
    d:=d/100;
    incB:=incB*power(10,-3);
    {B = u0*i*n}
    
    
 
    

    {emf:=-A*incB/s, which is 1}
    E:=(1/2)*(incB)*(sqr(r)/d);
    
    E:=E*power(10,3);
    
    
    
    writeln('The magnitude of the induced E-field is ',E:6:6,' mV/m. ')
end.
