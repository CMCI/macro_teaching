/* Part 5: While loops & If conditions
 *  
 *  While loops allow us to run code for as long as a certain condition is true. If conditions are a part of boolean 
 *  logic, and allow us to check if certain conditions have been met.
 *   
 */
 
 //Run the following code (lines 10 - 16) to get a thresholded version of the blobs image, and a list of ROIs corresponding to blobs
 
run("Blobs (25K)");
setAutoThreshold("Default dark");
setAutoThreshold("Default");
setOption("BlackBackground", true);
run("Convert to Mask");
run("Analyze Particles...", "add");
run("Set Measurements...", "area redirect=None decimal=3");

/*We now have a bunch of outlines (ROIs) around each blob. I'm going to randomly select blobs (using the random number generator from
 * the video), and print out their size. The first time we get to a small one, the code will stop running, and we'll see a message. 
 * Sorry to introduce the ROI manager without talking about it, but essentially it's an array of co-ordinates. You'll see :)
 * Run lines 24 - 37
*/

rN = round(random * roiManager("Count")); //this random number will be between 0 and however many ROIs we have
size = 101; //we need to initialise this variable before the loop and set it to a value higher than the condition below
count = 0; //this will keep track of the number of times the loop has run
while (size > 100){ //size needs to satisfy this condition, initially
	roiManager("Select",rN); //select the ROI, depending on the value of rN
	run("Measure"); //measure it
	
	//the getResult command allows us to pull info from the results table - here I'm using it to pull
	//the value of the Area column from the last row (i.e. the cell I just measured)
	size = getResult("Area", nResults -1); //nResults-1 is the last row
	
	rN = round(random * roiManager("Count")); //we need to make a new random number!
	count ++; //...and iterate the count by one
}
print("I found a small one, after "+count+" loops! Sized: "+size);


/* Let's use a different tool to do a similar job: the for loop.
 *  Make sure you still have blobs.gif open, and the ROIs from the first exercise. We're not going to use a random number this time
 *  we're going to step through the ROIs one by one, and print their size if it's little.
 */
 
 size = 101; //this is going to be our threshold
 smallCount = 0;
 bigCount = 0;
 for (blob = 0; blob<roiManager("Count"); blob++){ //roiManager("Count") tells us how many ROIs we have
 	roiManager("Select", blob);//select the ROI, depending on the value of the iterative variable blob
 	run("Measure"); //measure it
	if (getResult("Area", nResults -1)<size){ //here, we check if the blob is smaller than the size variable
		//if the blob is smaller, we'll run the code between the braces:
		smallCount++; //add one to the count
		print("I found a small one, number "+blob+"!");
	} else { //if the if condition isn't true, run what's between the else braces
		bigCount++;
	}
 }
 print("I found "+smallCount+" small ones, and "+bigCount+" big ones!");
 
 /* If conditions can be used to check if numbers are smaller, bigger or equal to other numbers, and if strings are
  *  equivalent. Apparently capitalisation isn't important in imageJ .tif ==.TIF
  *  
  *  Run the below code as three separate blocks so you can parse it more easily
  */
  // ----Block 1-------------------
  size = 10;
  if (size<100){ //less than
  	print("Size is too small");
  }
  if (size>1){ //greater than
  	print("Size is too big");
  }
  if (size==10){ //the same as
  	print("Size is just right");
  }
  // -----Block 2------------------
  string = ".tif";
  if (string == ".TIF"){ //the same as
  	print("This is a tif file");
  } else{
  	print("Check your spelling...");
  }
  // -----Block 3------------------
  string = ".tif";
  if (string != ".TIF"){ //NOT the same as
  		print("This is not a tif file");
  } else{
  		print("Change the spelling of string, and run this again!");
  }
 
 
 /* Okay, exercise time again. 
  *  
  *  A) Write a while loop that will produce the Fibonacci sequence (1,2,3,5,8,13,21... until it goes past 300
  *  
  *  B) run this line of code:*/ 
 run("Set Measurements...", "area shape redirect=None decimal=3");
 /* This will give you some new columns in your results table. Modify the if condition from lines 45-59 to check for AR, 
  * (aspect ratio), then classify cells as "long" (high AR), or "even" (AR close to 1), and change the strings to match.
  * 
  * C) Look back at the code you wrote for the file list exercise in for loops. Rather than having code to print out every filename,
  *  write an if condition that will only print out filenames if they don't end with '.tif'. Remember substring!
  
  
  ------ Answers-------
  A) Fibonacci code:
  fib = 1;
  fib_prev = 0;
  while(fib<300){
  		print(fib);
  		temp = fib;
  		fib = fib + fib_prev;
  		fib_prev = temp;
 	}
 	I'll be honest that this was a lot harder than I thought it would be - the temp variable inside the loop is necessary to store the 
 	previous value of fib. If you end up with something that looks like 1,2,4,8,16,32,64,128,256 then you can consider that a success 
 	as well. Treat yourself!

 
	B) The code should look something like:
	 ratio = 2; //this is going to be our threshold
 longCount = 0;
 evenCount = 0;
 for (blob = 0; blob<roiManager("Count"); blob++){ //roiManager("Count") tells us how many ROIs we have
 	roiManager("Select", blob);//select the ROI, depending on the value of the iterative variable blob
 	run("Measure"); //measure it
	if (getResult("AR", nResults -1)>ratio){ //here, we check if the blob is longer than the ratio variable
		//if the blob is longer, we'll run the code between the braces:
		longCount++; //add one to the count
		print("I found a long one, number "+blob+"!");
	} else { //if the if condition isn't true, run what's between the else braces
		evenCount++;
	}
 }
 print("I found "+longCount+" long ones, and "+evenCount+" even ones!");
 
 C) The code should look something like:
 
 fPath = getDirectory("Where are files?");
 fList = getFileList(fPath);
 for (file =0;file<fList.length;file++){
 	fName = fList[file];
 	if (substring(fName, 0, fName.length-4)!=".tif"){
  print(fList[file]);
 	} //end of if loop
 }//end of for loop
    
*/
