



program phy_calc_Q2; 
var 
    i , d , currentDensity : double; 
begin 
    writeln('input total current and diameter accordingly.');
    readln( i , d );
    i := i / 1000; {change from mA to A}
    d := d / 1000; {change from mm to m}
    
    {calculations}
    currentDensity := 2 * i;
    
    writeln(currentDensity:8:6);
end.