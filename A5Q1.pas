
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
  writeln('input q2');
  readln(qb);
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
  writeln(distanceA);
  writeln(distanceB);
  Qproduct := qa*qb;
  Fa := k * (Qproduct / distanceA);
  Fb := k * (Qproduct / distanceB);
  writeln(Fa , ' ' , Fb);
  ans := Fa - Fb;
  writeln('The answer is ', ans:6);
  end.

