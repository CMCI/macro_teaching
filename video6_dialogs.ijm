/* Part 6: Dialogs
 *  
 *  Dialogs allow users to specify values they want to use for certain parameters in their code, and allow coders to input 
 *  defaults for these values. They can give you a lot of flexibility, and honestly look quite slick; rather than have someone
 *  open a macro and adjust some constants in the code itself, they can just run the macro and be given an interface to work
 *  with, which is much nicer.
 *   
 */
 
// I'm going to make a dialog box with all the types of input in it; run this code section and see how each piece of code
// relates to each element of the dialog.



Dialog.create("Test Dialog Box"); //this is just the title, but is needed to initialise the box
Dialog.addMessage("Enter options here:", 18, "red"); //prints a big red message
Dialog.addCheckboxGroup(2, 2, newArray("One: ","Two: ","Three: ","Four: ") , newArray(false, true, false, true)); //pay attn to the order!
threshArray = getList("threshold.methods");
Dialog.addChoice("Threshold: ", threshArray, "Huang"); //Instead of making a newArray, I'm using a predefined one; this can be defined inside											// or outside the dialog code
Dialog.addNumber("Area: ", 100, 0, 5, "pixels"); //this is a highly-detailed number field
Dialog.addRadioButtonGroup("Quadrant: ", newArray("1","2","3","4"), 2, 2, 3); //See comments below 
Dialog.addSlider("Filter radius: ", 0, 10, 3); //Sensitivity might be an issue with the slider when the max is very high
Dialog.addString("Filename: ", "experiment_1", 60);
Dialog.show();//no parameters here

/*----------------
 * A quick comment about the radio button group: this echoes the addChoice option, in that you can select one option from a list of
 * several. However, because all of the buttons are laid out at once, and you can put them in a grid, it *could* be useful for very
 * specific options, like choosing which quadrant of an image to analyse.
 */

/*Question + Exercise + Final exam:
 * 
 * A) This creates a weirdly wide dialog box - why is that? Identify the parameter that's causing it, 
 *  and alter it to make the box less wide.
 * B) Use the Dialog.getX() commands to output the options to appropriately-named variables, and print each of those to the console
 *  with print(variable)
 *  
 *  There's not much else to do with dialogs, other than to use the variables that they output in some code.
 *  
 *  Here's your "final exam"! There's no time limit, no grading system. Just put the lessons into practice, and you'll
 *  feel pretty good about your abilities!
 *  
 *  Using the macro recorder, and pieces of code from the lessons we've done so far, write a macro that does the following:
 *  1) Opens the blobs.gif example image (look in the while loop section!)
 *  2) Create a dialog that offers the user the following:
 *  	• A choice of pixel intensity threshold (e.g. Huang, Intermodes, etc.)
 *  	• An area threshold in pixels
 *  	• A filename to save to
 *  3) Offer the user an option to say where to save the log window
 *  4) Use thresholding, as defined by the dialog box to threshold the image
 *  	- Write the threshold method to the log window, something like "Using <threshold>: "
 *  5) Analyse particles, and for each particle, print in the log window how big it is in pixels
 *  	- Unless it's smaller than the area threshold from the dialog
 *  	- IF it's smaller than the area threshold, print "Particle too small to count"
 *  6) In the log window, print how many objects above area threshold:
 *  	- "I found X objects bigger than <threshold> pixels in size
 *  7) Use saveAs("Text",file path); to save the log window to the path dictated in step 3 with the name pulled from the dialog box
 *  8) Breathe!
 *  
 *  How *I* would write this code is going to be uploaded to the github as "exam_answer.ijm"
 *  If your code does 1-7 above, you're good; there are usually multiple ways to get to the same answer when 
 *  you're using the macro language.
 *  
 */
