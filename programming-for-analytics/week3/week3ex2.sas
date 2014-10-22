/*
Week3 Ex2
series
*/
data interest;
    factor=2;
    count=0;
    numer=1;
    denom=1;
    fract=0;
    total=0;

    do until (count >100);
        count=count+1;
        denom=denom * factor;
        fract=1/denom;
        total=fract+total;
        output;
    end;
run;

proc print ;
run;
