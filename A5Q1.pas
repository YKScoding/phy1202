
program phy_Q1_calc;
var
    k , qa , qb , ans : real;
    ra , rb , rc , rd : real;
    distanceA , distanceB : real;
    Fa , Fb : real;
    Qproduct : real;
begin
  
  k := 8.99 * 1000000000;
  writeln('input q1');
  readln(qa);
  qa := qa * 0.000001;
  writeln('input q2');
  readln(qb);
  qb := qb * 0.000001;
  writeln('input first rx');
  readln(ra);
  writeln('input first ry');
  readln(rb);
  writeln('input second rx');
  readln(rc);
  writeln('input second ry');
  readln(rd);
  distanceA := sqrt(sqr(ra) + sqr(rb));
  distanceB := sqrt(sqr(rc) + sqr(rd));
  writeln('distances 1 and 2 are ');
  writeln(distanceA:6:8);
  writeln(distanceB:6:8);
  Qproduct := qa*qb;
  Fa := k * (Qproduct / distanceA);
  Fb := k * (Qproduct / distanceB);
  writeln(Fa:6:8 , ' ' , Fb:6:8);
  ans := Fa - Fb;
  writeln('The answer is ', ans:6:8);
  end.
