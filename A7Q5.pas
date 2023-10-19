program phy_calc_Q5; 
uses Math;
var 
    R , d , ohms : double; 
    Vn , Area , length: double;
begin 
    writeln('input Resistivity, diameter, and ohms required.');
    readln(R , d , ohms);
    R := R * power(10, -6);
    d := d / 1000;
    
    
    {Resistivity per area = R * R}
    {Length needed to achieve desired resistance = res Desired/ res per Area}
    Area := pi * power((d/2) , 2);
    length := ohms * Area / R;
    writeln;
    writeln('The length of wire needed is: ' , length:8:8 , ' m.');
end.
