
program Phy_Q4;
var
    k , d : extended;
    qa , qb , F , m , a , s: extended;
    ans : extended;
begin
    k := 8.99 * 1000000000;
    writeln('input distance of charge 2');
    readln(s);
    writeln('input the magnitute of charge 1');
    readln(qa);
    writeln('input the magnitute of charge 2');
    readln(qb);
    writeln('input the mass of the 2nd point charge');
    readln(m);
    writeln('distance to origin of which the speed is measured');
    readln(d);
    qa := qa * 0.000001;
    qb := qb * 0.000001;
    m := m * 0.0001;
    F := (k * qa * qb) / sqr(s-d) ;
    a := F / m;
    writeln('The accelaration is ' , a:8:6);
    ans := sqrt(Abs(2 * a * (s-d)));
    writeln('the answer is ' , ans:8:6 );
end.
