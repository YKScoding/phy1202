



program phy_calc_q3;
uses math;
var
    mel{mass of electron},
    q{charge of electron},
    B{magnetic field strength in T},
    r{radius},
    Fb{force of B-field},
    v{velocity}: double;
begin
    writeln ('input magnetic field,radius');
    readln(B,r);
    mel:=9.11*power(10,-31);
    q:=-1.6*power(10,-19);
    B:=B*power(10,-2);
    r:=r/100;
    Fb:=abs(q)*B;
    v:=Fb*r/mel;
    v:=v/power(10,8);
    writeln('The required velocity is ',v:6:6,' x10^8 m/s')
end.