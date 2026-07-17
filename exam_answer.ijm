/*  1) Opens the blobs.gif example image (look in the while loop section!)
 *  2) Create a dialog that offers the user the following:
 *  	• A choice of pixel intensity threshold (e.g. Huang, Intermodes, etc.)
 *  	• An area threshold in pixels
 *  	• A filename to save to
 *  3) Offer the user an option to say where to save the log window
 *  4) Use thresholding, as defined by the dialog box to threshold the image
 *  5) Analyse particles, and for each particle, print in the log window how big it is in pixels
 *  	- Unless it's smaller than the area threshold from the dialog
 *  	- IF it's smaller than the area threshold, print "Particle too small to count"
 *  6) In the log window, print how many objects above area threshold:
 *  	- "I found X objects bigger than <threshold> pixels in size
 *  7) Use saveAs("Text",file path); to save the log window to the path dictated in step 3 with the name "_output.txt"

 *  
 */
 
 /* 
  *  
  */
  
run("Blobs (25K)");
Dialog.create("User Options: ");
threshArray = getList("threshold.methods");
Dialog.addChoice("Threshold: ", threshArray, "Huang");
Dialog.addNumber("Area: ", 100, 0, 5, "pixels"); 
Dialog.addString("Filename: ", "experiment_1", 15);
Dialog.show();//no parameters here

threshMethod = Dialog.getChoice();
pxThresh = Dialog.getNumber();
fName = Dialog.getString();
count = 0;

fPath = getDirectory("Point me to a safe place to save this file: ");
setAutoThreshold(threshMethod);
run("Convert to Mask");
run("Analyze Particles...", "add");
print("Using the "+threshMethod+ " threshold method: ");
for (roi = 0; roi<roiManager("count");roi++){
	roiManager("Select",roi);
	run("Measure");
	roiArea = getResult("Area", nResults-1);
	
	if (roiArea > pxThresh){
		print("I found a blob, area "+roiArea+ "pixels in size.");
		count++;
	} else {
		print("Particle too small to count.");
	}
}
print("I found "+count+" particles");
saveAs("text", fPath + fName);

