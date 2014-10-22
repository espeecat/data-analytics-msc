/* week 3 loopa
*/
data myloop;
    do x=1 to 5;
        y=3*x;
        output;
    end;
run:

proc print ;
run;