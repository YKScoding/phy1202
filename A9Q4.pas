



program phy_calc_q4;
uses math;
var
    B{B-field strength},
    r{radius},
    A{area},
    i{current},
    T{torque}: double;
begin
    writeln ('input magnetic field,current,diameter');
    readln(B,i,r);
    r:=r/200;{convert to radius in meter}
    A:=pi * sqr(r);
    T:=i*A*B*1; {assume that sin 90 degree}
    {writeln(radtodeg(arctan(-0.8/-0.6)):6:6,' degrees');}
    T:=T*1000;
    writeln('The required torque is ',T:6:6,' m-Nm')
end.
