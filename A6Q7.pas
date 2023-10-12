


program Phy_Q7_calc;
var
    C1 , C2 , C3 , C23 , C123 , V , q123 , q23 , q2 , V2 : double;
begin
    writeln('input C1 capacitance');
    readln(C1);
    writeln('input C2 capacitance');
    readln(C2);
    writeln('input C3 capacitance');
    readln(C3);
    writeln('input Voltage');
    readln(V);
    C23 := C2 + C3;
    C123 := 1/C1 + 1/C23;
    C123 := 1/C123;
    q123 := C123 * V;
    q23 := q123;
    V2 := q23 / C23; 
    {V2 = V23, since capacitor in parallel means voltage is the same}
    q2 := C2 * V2;
    writeln('The resultant equivalent capacitance is: ' , q2:6:8)
end.

