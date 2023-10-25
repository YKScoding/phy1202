

program phy_calc_2;
var
    r1,r2,r3,r4,r12,r34,v,i,r1234,i34:extended;
begin
    writeln('input resistor 1,2,3,4, and voltage(from left to right and top to bottom)');
    readln(r1,r2,r3,r4,v);
    {1/r123 = 1/r1 + 1/r2 ...}
    r12 := r1+r2;
    r34 := r3+r4;
    r1234 := 1/r12 + 1/r34;
    r1234 := 1/r1234;
    {v =ir}
    i := v/r1234;
    {voltage constant between r12, r34, r1234}
    i34 := v/r34;
    {current constant between r3, r4, for resistor in series}
    writeln('the answer is ',i34:8:8)
end.

