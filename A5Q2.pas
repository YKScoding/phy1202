
program Phy_Q2;
var
    k , sqlength : extended;
    q , Fa , Fb : extended;
    ans : extended;
begin
    k := 8.99 * 1000000000;
    writeln('input length of the side of the square');
    readln(sqlength);
    writeln('input the magnitute of the identical charges');
    readln(q);
    q := q * 0.000001;
    Fa := q / sqlength;
    Fb := q / sqrt(sqr(sqlength) + sqr(sqlength));
    Fa := Fa * k;
    Fb := Fb * k;
    ans := Fa + Fb;
    writeln('Fa: ', Fa:2:2);
    writeln('Fb: ', Fb:2:2);
    writeln('the answer is ' , ans:8:6 );
end.
