



program phy_calc_q2;
uses math;
var
    Vol{voltage},
    B{magnetic field},
    m{mass},
    q{charge of electron},
    U{Electric Potential Energy},
    velo{velocity of particle},
    E{required electric field strength}: double;
begin
    writeln ('input potential difference, magnetic field');
    readln(Vol,B);
    Vol := Vol * 1000{kV to V};
    m := 9.11*power(10,-31); {should be hard coded into the question}
    q := -1.6*power(10,-19); {charge of an electron}
    U := Vol*q;
    {U = KE, therefore U = 1/2 * m * v^2}
    velo := U*2/m;
    velo := sqrt(abs(velo));
    {Fe = Fb}
    {Fe = q*E = Fb = q*velo*B }
    E := velo*B;
    writeln('The required E.Field strength is ',E:4:4,' V/m')
end.