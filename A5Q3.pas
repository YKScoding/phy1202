
program Phy_Q3;
var
    k , c , d , L , a , b: extended;
begin
    k := 8.99 * 1000000000;
    writeln('input distance of charge 1');
    readln(c);
    writeln('input distance of charge 2');
    readln(d);
    writeln('input the magnitute of charge 1');
    readln(a);
    writeln('input the magnitute of charge 2');
    readln(b);
    L := ((b * c) - (a * d)) / (b - a);
    writeln('the answer is ' , L:8:6 );
end.