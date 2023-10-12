


program Phy_Q8_calc;
var
    C12 , C1 , C2 , q , V : double;
begin
    writeln('input C1 capacitance');
    readln(C1);
    writeln('input C2 capacitance');
    readln(C2);
    writeln('input Voltage');
    readln(V);
    C12 := 1/C1 + 1/C2;
    C12 := 1/C12;
    q := C12 * V; 
    {charge is the same for series capacitors.}
    writeln('The resultant equivalent charge is: ' , q:6:8)
end.

