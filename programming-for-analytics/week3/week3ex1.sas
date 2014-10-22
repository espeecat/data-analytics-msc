/**
Week 3
Ex 1
Compound interest
100 quid at 5%
How many years to 200



*/
data interest;
    rate=0.05;
    start=100;
    final=200;
    total=0;
    * target
total = start;
    year=0;
    total=start;

    do until (total >=final);
        * o until (year >10);
        year=year +1;
        total=total + (total *rate);
        output;
    end;
run;

proc print ;
run;