
program phy_calc_Q1;
var
    charged , dps , rps , circumference , pi , diameter , width , rpm , charge , time , current : double;
begin
    pi := 3.1415926535897932384626433;
    writeln('input diameter');
    readln(diameter);
    writeln('input rpm');
    readln(rpm);
    writeln('input width');
    readln(width);
    writeln('input charge density');
    readln(charged);
    charged := charged / 1000; {convert mC to C}
    {calculations:}
    
    rps := rpm / 60;
    circumference := pi * diameter;
    
    {dps = distance per second}
    dps := circumference * rps; {in cm/s}
    
    {convert density to actual charge}
    charge := charged / (dps * width);
    {current = charge over time}
    time := 1;
    current := charge / time;
    current := current * 1000;{convert A to mA}
    writeln('The velocity is : ' , dps:8:6 , 'cm/s');
    writeln('The area is : ' , dps * width:8:6 , 'cm^2');
    writeln('The amount of charge : ' , charge:8:6 , 'C');
    writeln('The answer is : ' , current:8:6 , 'mA');
end.

