{

                            Online Pascal Compiler.
                Code, Compile, Run and Debug Pascal program online.
Write your code in this editor and press "Run" button to execute it.

}


program phy_calc_Q1;
var
    dps , rps , circumference , pi , diameter , width , rpm , charge , time , current : double;
begin
    pi := 3.1415926535897932384626433;
    writeln('input diameter');
    readln(diameter);
    writeln('input rpm');
    readln(rpm);
    writeln('input width');
    readln(width);
    writeln('input charge density');
    readln(charge);
    charge := charge / 1000; {convert mC to C}
    {calculations:}
    
    rps := rpm / 60;
    circumference := pi * diameter;
    {dps = distance per second}
    dps := circumference * rps;
    
    {convert density to actual charge}
    charge := charge / (dps * width);
    {current = charge over time}
    time := 1;
    current := charge / time;
    current := current * 1000;{convert A to mA}
    writeln('The answer is : ' , current:8:6);
end.

