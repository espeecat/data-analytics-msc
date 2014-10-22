/*
Week 3 ex 3
Birthday problem
*/
data probs;
    days=365;
    count=0;
    nostud=50;
    prob=1;
    totalp=1;
    bday=0;

    do people=365 to (365-nostud) by -1;
        prob=people/days;
        totalp=totalp*prob;
        bday=1 -totalp;
        output;
    end;
run;

proc print ;
run;