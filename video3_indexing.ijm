/* Part 3: Indexing
 *  
 *  Indexing is the word used to describe where a specific piece of data is in a variable that contains multiple pieces of data
 *  such as an array, or a string. In this section we're going to use "true" indexing with square brackets, and "substring" indexing
 *  to access specific elements of a string.
 *  
 */
 
 fName = "cell_div.tif";//this is a string that represents a filename
 //if we want to trim off the ".tif", we need to use substring and .length
 
 fName_trimmed = substring(fName,0,fName.length-4);
 print(fName_trimmed);
 
/*substring needs 3 inputs; a string, a start character and an end character
   - the fName variable is the string we want to trim
   - we want to keep all of the string, so we start at character 0
   - we don't always know how long a string is, so we can't use an absolute position (e.g. 8), we need to use .length
   .length is a parameter that arrays and strings have - this is their length; "cell_div.tif" has 12 characters, so it has .length 12
   - "cell_div.tif".length = 12
   - we want to trim off the last 4 characters .,t,i,f , so we set the end character to be the 4th from the end: fName.length-4
*/

//What will the following command produce?
fPath = "Users/CMCI/Documents/test/"; 
print(substring(fPath,0,fPath.length-3));

/* Arrays are variables that contain multiple numbers or strings. They are created manually with the newArray() command, or with
 *  commands like getFileList(path). By using square brackets surrounding a number x, we can access the xth value in the array
 */
 
giantArray = newArray("Fee", "Fi", "Foe", "Fum"); //a string array, each string separated by commas
numArray = newArray(20, 652, 123, 75);//a number array, each number separated by commas

//A ) What will the code below produce? Answers at the bottom.
print(giantArray[2]); 
print(giantArray[4]); 
print(numArray[1]);

/* B) Exercise time! Using the newArray command, like I did above, make an array of strings, and one of numbers. For the string array,
 *  fill in four or five names - your family, pets, friends, TV characters you like, whatever. For the number array, 
 *  enter the ages associated with these names.
 *  
 *  Then, use Array.print(youArray) to check that these are formed correctly. In this command Array.print is capitalised!
 *  
 *  Finally, use string concatenation to print out the following sentence:
 *  I know someone called [X], and they are [Y] years old. 
 *  
 *  Change the values in X and Y to change who you're talking about.
 *  
 *  Is there a better way to change X and Y, other than changing each of them individually?
 *  
 *  I'll have an example of this below, but try it yourself before you look at my example.
 */


/* --- Answers and example codes -----

A ) If you run each line individually, you're going to see "Foe", then an error, because the index of the last element in giantArray is 3,
then 652 for the numarray. Remember indexing starts at 0!

B)
nameArray = newArray("Jim", "Naomi", "Amos", "Alex", "Bobby", "Clarissa");
ageArray = newArray(40, 42, 47, 50, 37, 36);
print("I know someone called "+nameArray[0]+", they are "+ageArray[0]+" years old");

If you wanted to tie together the indexing in the two arrays, you could make a numerical variable called person, and index using that:
person = 5;
print("I know someone called "+nameArray[person]+", they are "+ageArray[person]+" years old");
*/