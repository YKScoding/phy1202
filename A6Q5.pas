
program phy_q5_calc;
var
    o , E , q , ep , A , d , pi , C , V : double;
begin
    {o = q/A , V = Ed , C = (e0 * A) / d , and q = CV should be used}
    writeln('input area of plates');
    readln(A); {A is in sqr. meter already, no need to change}
    writeln('input plate separation');
    readln(d); {d is in mm, which need to be converted to m}
    d := d / 1000;
    writeln('input electric field present between the plates');
    readln(E); {times 10^6, since scientific notation...}
    E := E * 1000000; 
    ep := 8.85 * 0.000000000001; {epsilon (e0) provided by question}
    pi := 3.1415926535897932384626433; {pi...}
    C := (ep * A) / d;
    V := E * d;
    q := C * V;
    o := q / A;
    o := o * 1000000; {since the answer is in uC m^-2}
    writeln(o:6:8 , ' is the answer.')
end.

