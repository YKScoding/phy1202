program phy_calc_Q4; 
uses Math;
var 
    V , internalR , I : double; 
    externalR , totalR , P : double;
begin 
    writeln('input V, internalR, and I.');
    readln(V , internalR , I);
    {V = IR, R = V/I}
    totalR := V / I;
    externalR := totalR - internalR;
    writeln('The resistance is: ' , externalR:16:16);
    P := V * (externalR/totalR) * I;
    writeln('The power dissipated is : ' , P:8:8);
end.