

program phy_calc_1;
var
    r1,r2,r3,r123,r4,v,i,r :extended;
begin
    writeln('input resistor 1,2,3,4, and voltage');
    readln(r1,r2,r3,r4,v);
    {1/r123 = 1/r1 + 1/r2 ...}
    r123 := 1/r1 + 1/r2 + 1/r3;
    r123 := 1/R123;
    r := r123 + r4;
    {v =ir}
    i := v/r; {calculating i for all circuit}
    v := i * r123; {i is constant for series, calculate v for p resistor}
    i := v/r3; {voltage is constant for parallel, calc i for r3}
    writeln(v:3:3, ' V');
    writeln('the answer is ',i:8:8);
    writeln(r3:3:3, ' ohm')
end.
