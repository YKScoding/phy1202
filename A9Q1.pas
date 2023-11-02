

program phy_calc_q1;
uses math;
var
    B{magnetic field},
    E{electric field},
    v{electron velocity},
    q{charge of the electron},
    F{force vector Fy}: double;
    Fb{force of the magnetic field on electron},
    Fe{force of the electric field on electron}: array[1..3] of double;
begin
    writeln ('input uniform magnetic field, electric field and speed of electron');
    readln(B,E,v);
    E:=E*power(10,4);
    v:=v*power(10,4);
    {the charge of the elctron should never change, so}
    q:=-1.6*power(10,-19);
    {since the magnetic field is towards -z, and electron x}
    Fb[2]:=q*v*B*1{ = sin90degree};
    {the force should go to positive-y axis, since it is a negatively charged partical}
    Fe[2]:=q*E;
    F:=Fb[2]+Fe[2];
    F:=F*power(10,14);
    writeln('The required Fy is: ',F:4:4,' x10^-14 N')
end.

