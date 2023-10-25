

program phy_calc_4;
var
    r,v,r1,rv,r2,r1v,i1v,i:extended;
begin
    writeln('input resistor 1&2 ,rv, and v');
    readln(r,rv,v);
    r1 := r;
    r2 := r;
    r1v := 1/rv + 1/r1;
    r1v := 1/r1v;
    i1v := v/r1v;
    i := i1v;{i is constant for series}
    r := r1v + r2;
    v := i*r;
    writeln('the answer is ',v:8:8)
end.

