//To make sure the *.so functions are available to a q process we must export the location of the *.so files
//e.g.  export LD_LIBRARY_PATH=/.../folderWhereWeKeep time.so file

//we use dynamic load 2: operator
//http://code.kx.com/wiki/Reference/TwoColon

//Its left argument is a symbol representing the name of the dynamic library from which to load the function
//Its right argument is a list of a symbol which is the function name and an integer which is the number of arguments the function to be loaded takes.
gt:`time 2: (`getTime;1);

//now we can call gt[] or gt`
//q)gt[]
//2017.07.11D08:07:13.462855785
//q)gt`
//2017.07.11D08:09:00.759942438
