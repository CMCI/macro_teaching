/* Part 4: For loops
 *  
 *  FOR loops allow us to repeat a chunk of code multiple times in a row, like if we wanted to process all the files in a folder.
 *  
 *  We can use this in conjunction with indexing, to change a parameter in the code each time we run through it.
 *  
 */
 
 //A for loop is constructed with the for keyword, followed by an iterative variable, end condition and iteration step:
 for (file = 0; file < fList.length; file++){
 	///code loop goes here
 }

//file = 0 ; this is the initial state of the appropriately-named iterative variable.
//file < fList.length ; as long as this is true, the for loop will run
//file++ ; each time the loop runs, the value of file increases by 1

//As an example, I'm going to take an array I wrote earlier, and loop through it:
nameArray = newArray("Jim", "Naomi", "Amos", "Alex", "Bobby", "Clarissa");
ageArray = newArray(40, 42, 47, 50, 37, 36);

for (person = 0; person < nameArray.length; person++){//person is the iterative variable, 
 	//and the end condition is the length of the name array
 	print("I know someone called "+nameArray[person]+", they are "+ageArray[person]+" years old");
 	//We index in these arrays with the iterative variable, as the value of this changes every loop.
 	//so each time the code runs, it prints a new line of text.
}

/* Exercises:
 * A) The following section of code is going to produce an interesting result. Read through the code before you run it, and try and to
 * predict what the result will be. Once you run the code, see if you're right! If you can't make a prediction, try and figure out
 * why it's producing this result after you've run the code.  
 */

century = Array.getSequence(101); //this is going to be an array that counts from 0-100
count = 10;
dix = 10;
for (count = 0; count < 13 ; count++){
	print("Count = "+count+" Century ="+century[count+dix]);
	dix = dix + count;
}

// B) This code looks kind of similar, and it will give you a different result. Predict it, please!
century = Array.getSequence(101); //this is going to be an array that counts from 0-100
count = 10;
dix = 10;
for (count = 100; count >0 ; count++){
	print("Count = "+count+" Century ="+century[count]);
	count = count -2;
}

/* C) Use a combination of the getFileList and getDirectory commands along with a for loop to print out the names of files in a folder
 *  on your computer.
 */ 
 
 
 
 /* Answers:
  *  A) It produces 13 rows of text, in which the value of century starts at 10, then increases by 1, then 2, then 3, etc.  
  *  The limit of count < 13 is introduced because I know that the array century only has 101 entries, and the indexing would fail
  *  if the value of count goes above 12.
  *  
  *  B) This counts down from 100. This is a very silly way to count down from 100, but it's a suprise way to do it! Usually, 
  *  we would set the final variable of the for loop to be count-- or count = count -1, instead of count++
  *  then we could delete the line count = count -2 within the loop. 
  *  
  *  C) It should look something like this:
  *  fPath = getDirectory("Where are files?");
  *  fList = getFileList(fPath);
  *  for (file =0;file<fList.length;file++){
  *  	print(fList[file]);
  *  }
  */