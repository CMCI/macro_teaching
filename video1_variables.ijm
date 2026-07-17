/* Part 1: Variables
 *  
 *  Variables are "boxes" that you create to store parameters 
 *  You a variable name, then put the contents of the box on the right side of the equals sign
 *  
 *  Variables must be created before they are used again.
 *  
 *  Variables should be named using standard ascii text, avoiding numbers as initial characters, and should have a name
 *  that refers to their job in the script.
 *  
 */
 
//These are good variable names:
userName = "Chris"; //Chris is the user
cellCount = 5; //I am going to count 5 cells

//These are bad or illegal names:
x = "Chris"; //will I remember what x is?
2Count = 5; //starts with a number
var = 3; //reserved for the system

//You can specify the contents of a variable explicitly (as above), or you can derive them from the output of a function:
fName = getInfo("image.filename"); //gets the name of the active image and stores it in an appropriately-named variable

//You can check the contents of a variable using the print command:
print(userName, cellCount); //prints the values in these variables to the log window
Array.print(fileNameArray); //you need to use this version of the print function to show the contents of an array variable.

//A) If you use the same name for a variable later in your code, the first variable will be overwritten. What's the value of 
// animal after this code has run?
animal = "Caterpillar";
count = 3;
walk = 52;
animal = "Butterfly";

//Answer at the end.


/* It's time for some exercise! Not much, we're only getting started and our toolbox is currently tiny.
 *  
 *  Make 3 variables - 2 strings and a number, give them appropriate names, and try to print them each using the 
 *  print(variable) command like I did above.
 *  
 *  You'll need to select your code, then press cntrl-shift-R (or cmd-shift-R) to run just the selected code.
 *  
 *  The answer to A) is "Butterfly"! When we specified the "animal" variable a second time, we gave it a new value, and the initial
 *  value of caterpillar was forgotten.
 */

