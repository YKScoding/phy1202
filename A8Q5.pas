

program phy_calc_5;
uses math;
var
    v,ireq,q,q0,i,R,C,time,T,E:extended;
begin
    writeln('input v and i required');
    readln(v,ireq);
    ireq := ireq * power(10,-6);
    writeln('The current required is: ',ireq:3:3,' uAmps');
    {supposing the capacitance and resistance is the same for all}
    {time constant = RC}
    R := 1000000 * 1.5;
    C := power(10,-6)* 22;
    T := R * C;
    time := 0;
    
    E := 2.718281828459045235360287471352662497757247093;
    q0 := C * v;
    i := 100;
    while i > ireq do begin
        q := q0 * power(E,-time/T);
        i := q/T {(q0/T) * power(E,-time/T)};
        time := time + 0.001; {increment time by 1ms}
        writeln(q*power(10,6):8:8,'uC   ',i*power(10,6):8:8,'uA   ',time*1000:0:0,' ms');
    end;
    

    writeln('the charge is ',q* power(10,6):8:8,'uC');
    writeln('the current is ',i* power(10,6):8:8,'uA');
    writeln('the initial charge is ',q0*power(10,6):8:8,'uC');
    writeln('the initial current is ',q0/T* power(10,6):8:8,'uA');
    writeln('the time is ',time:6:6,' seconds, or ',time*1000:2:2,' ms');
end.

