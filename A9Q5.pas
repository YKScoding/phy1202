



program phy_calc_q5;
uses math;
var
    B{B-field strength},
    x,y,{x,y of the loop}
    A{area},
    i{current},
    T{torque}: double;
begin
    writeln ('input magnetic field,current,x,y');
    readln(B,i,x,y);
    A:=x*y;
    T:=i*A*B*sin(degtorad(90-35));
    writeln('The required torque is ',T:6:6,' Nm.')
end.