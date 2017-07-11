//we use dynamic load 2: operator
//http://code.kx.com/wiki/Reference/TwoColon

//Its left argument is a symbol representing the name of the dynamic library from which to load the function
//Its right argument is a list of a symbol which is the function name and an integer which is the number of arguments the function to be loaded takes.
gt:`time 2: (`getTime;1);

//now we can call gt[] or gt`
