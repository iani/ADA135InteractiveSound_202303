//: ** Write a program that prints "Hello World"
"Hello World"
/* Notes:
This is a program that creates the string "Hello World".  It consists of a single statement.
The program returns the object created.
SuperCollider posts the object returned by the last statement.
Therefore, Hello World is posted in the post window.

If we add the message postln, then the sting "Hello World" posts itself in the post window.
It also returns itself. Therefore we get Hello World two times:
1. Because of the statement "Hello World".postln;
2. Because of the object returned by the statement "Hello World".postln;

Therefore, "Hello World" alone is the right answer.
"Hello World".postln; is a less correct answer, because it posts two times,
and that can create confusion.
*/
//:Variants: Different objects.
/*
"Hello World" is a string.
We can find that out by running this:
*/
"Hello World".class;
// Other types of objects are:
//: Integer
10
//: Float
10.0
//: Symbol
\aSymbol
//: also symbol
'a Symbol with spaces'
//: Array
[]
//: Function
{}
//: Event
()
//: And many other kinds of object created from classes by sending the message "new".

//: Variants and Exercises:
// Other things that we can do with the initial statement:
/*
- Write a program with many statements, and add 'postln' to each statement, to see
the result of each statement.  Contrast this to what happens when you do not
add postln to each statement.
- Write a program that runs postln on a collection (for example, an Array) of objects
- Write a program that runs postln on each character (letter) of "Hello World".
- Write a program the posts "Hello World" 20 times.
- Write a program that posts "Hello World" with the characters in random order.
- Write a program that plays each letter of Hello World as a note of different pitch.
*/
