


program Phy_Q6_calc;
var
    C , S1 , P1 , S2 : double;
begin
    writeln ('input the capacitance');
    readln(C);
    {1/S1 = 1/Sa + 1/Sb}
    S1 := 1/C + 1/C;
    S1 := 1/S1;
    
    {P: C12 = C1+C2}
    P1 := S1 + C;
    
    {1/S12 = 1/S1 + 1/S2}
    S2 := 1/P1 + 1/C;
    S2 := 1/S2;
    writeln('The resultant equivalent capacitance is: ' , S2:6:8)
end.

