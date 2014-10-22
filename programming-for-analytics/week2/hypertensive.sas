* ods html close;
* ods html;
* run;

data hyper;
* input name $8. height 3. yearborn 8. weight1  weight2  weight3  gender ;

input visit1 date11. syst1 3. dia1 3.1 visit2 date11. syst2 3. dia2 3. ;


 diffday = datdif(visit1, visit2,'actual');

format visit1 date11.  visit2 date11. ;




datalines;
01-Jun-06	164	97	01-Aug-06	164	93
01-Sep-05	174	121	01-Oct-06	182	108
01-Nov-04	140	80	01-Sep-06	142	84
01-Sep-05	183	104	01-Sep-06	166	106
01-May-06	137	96	01-Oct-06	131	92
01-May-06	140	90	01-Aug-06	136	80
01-Apr-06	141	86	01-Sep-06	110	64
;
run;



proc print;
run;


proc means data=hyper maxdec=1;
var syst1 dia1 syst2 dia2 diffday;
run;
