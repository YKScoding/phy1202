

program phy_calc_1;
var
    r1,r2,r3,r123,r4,v,i,r1234:extended;
begin
    writeln('input resistor 1,2,3,4, and voltage');
    readln(r1,r2,r3,r4,v);
    {1/r123 = 1/r1 + 1/r2 ...}
    r123 := 1/r1 + 1/r2 + 1/r3;
    r123 := 1/R123;
    r1234 := r123 + r4;
    {v =ir}
    i := v/r1234;
    writeln('the answer is ',i:8:8)
end.

