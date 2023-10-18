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
    

    
    Vn := ohms / R;
    {volume needed  divided by area = length}
    writeln('The volume needed is ' , Vn:16:16 , ' m^3');
    Area := pi * power((d/2) , 2);
    writeln('The area of the wire is ' , Area:16:16 , ' m^2');
    length := Vn / Area;
    writeln('The length of wire needed is: ' , length:8:8 , ' m.');
    
    {Resistivity per area = R * R}
    {Length needed to achieve desired resistance = res Desired/ res per Area}
    length := ohms / (R*R);
    writeln;
    writeln('iteration 2: ');
    writeln('The length of wire needed is: ' , length:8:8 , ' m.')

end.