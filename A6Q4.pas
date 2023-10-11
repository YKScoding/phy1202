
program phy_q4_calc;
var
    q , C , V , e , A , d : extended;
begin
    {q = CV and C = (e0 * A) / d should be used}
    writeln('input area of plates');
    readln(A); {A is in sqr. meter already, no need to change}
    writeln('input plate separation');
    readln(d); {d is in mm, which need to be converted to m}
    d := d / 1000;
    writeln('input Voltage of potential source');
    readln(V); {V is in V.}
    e := 8.85 * 0.000000000001; {epsilon (e0) provided by question}
    C := (e * A) / d;
    q := C * V;
    q := q * 1000000000000; {since the answer is in pC}
    writeln(q:6:8 , ' is the answer.')
end.

