//toString for integer numbers
//e.g. .format.int[12000000] -> "12,000,000"
//x - integer number
.format.int:{
  pn:abs[x];
  if[pn < 1000;:x];
  c:count s:string pn;
  l:c-3;
  m:l mod 3;
  i:0,where m=til[c] mod 3;
  X:i cut s;
  r:-1_raze X ,\: ",";
  r:$[","=first r; 1_r;r];
  $[x<0;"-",r;r]
 };
