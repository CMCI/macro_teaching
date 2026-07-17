/* Part 2: Strings
 *  
 *  Manipulation of strings ("strings" of characters) is critical to programming in ImageJ, and it's pretty easy.
 *  
 */
 
 //Here, the run function has 2 parameters, both of which are strings, separated by commas
 run("Gaussian Blur...", "sigma=2");
 
 //Let's say we were using this gaussian blur 5 times in a program, the same way each time
 //If we wanted to change the width of the gaussian blur filter, changing each one 5 times would be a pain
 //Instead, we should make a variable, then use string concatenation to modify the parameter:
 
 blurKernel = 3; //the width of the desired gaussian blur kernel
 run("Gaussian Blur...", "sigma="+blurKernel); //string + variable = concatenation
 
//Here's another example

//open up an image, then select the 3 lines below, an in the "Run" menu (above) select "Run selected code"
fPath = getInfo("image.directory"); //this is a string containing a file path
fName = getInfo("image.filename");//this is a string containing a file name
print(fPath + fName); //this is a string concatenation of the two strings above

/* Exercise: create 3 variables; 2 strings, and one number. Concatenate them into a sentence that looks something like:
 *  "Adam has done this experiment 512 times now, and would give up a rib to never do it again."
 *  
 *  Use the print command to check the output. You'll need to select your code, then press cntrl-shift-R (or cmd-shift-R) 
 *  to run just the selected code.
 *  
 *  Don't peek at the code below until you've tried it a few times yourself!
 */
 
/*  --------------------------------------
 *   Example code:
    person = "Adam";
    sacrifice = "rib";
    repCount = 512;
    print(person+" has done this experiment "+repCount+" times now, and would give up a "+sacrifice+" to never do it again.");
  
*/

