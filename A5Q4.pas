
program Phy_Q4;
var
    k , work : extended;
    qa , qb , F , m , ra , rb : extended;
    v : extended;
begin
    k := 8.99 * 1000000000;
    writeln('input distance of charge 2');
    readln(rb);
    writeln('input the magnitute of charge 1');
    readln(qa);
    writeln('input the magnitute of charge 2');
    readln(qb);
    writeln('input the mass of the 2nd point charge');
    readln(m);
    writeln('distance to origin of which the speed is measured');
    readln(ra);
    qa := qa * 0.000001;
    qb := qb * 0.000001;
    m := m * 0.0001;
    v := sqrt(abs(2 * (k * qa * qb) * ((1 / rb) - (1 / ra)) / m));
    writeln('the answer is ' , v:8:6 );
end.
