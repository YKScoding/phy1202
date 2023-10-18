program phy_calc_Q3; 
uses Math;
var 
    d , i , n , Vd , e : double; 
    currentDensity , Area : double;
begin 

    n := 8.5 * power(10,22);
    {number of electron carriers in copper per unit volume}
    
    writeln('input diameter in cm and maximum safe voltage accordingly.');
    readln( d , i );
    currentDensity := i;
    {calculations}
    Area := Pi * power((d / 2),2) ;
    {e = charge of an electron}
    e := 1.6 * power(10 , -19);
    Vd := i / (n * Area * e);
    writeln('The drift velocity is : ', Vd:32:32)
end.