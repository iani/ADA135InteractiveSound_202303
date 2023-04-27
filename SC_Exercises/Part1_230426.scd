/* 26 Apr 2023 16:52

* Part 1:

*/

//: ** Write a program that prints "Hello World"
"Hello World".postln;
//: Variation of line 1:
10.postln;

//: Comment: Different types of objects:
10  // Integer
10.0 // float
pi // float
"asdfasdf" // string
'symbol' // symbol
{  }   // function
[1, 2, 3] // array
() // Event
Synth() // synth : alternative: Synth.new; Synth.new()
Window() // window
....
//:
"Hello World"

//: *** Write a program that calculates 2 + 2.
2 + 2;
//: Variant. Exercise: What will this program print on the post window?????
2 + 2;
1 + 1;
//: Variant. Exercise 2: Make the program post the result of every statement.
(2 + 2).postln;
1 + 1;
//: *** Write a program that generates a random number between 0 and 9.
10.rand;
//: *** Write a program that generates a random number between 10 and 20.
10.rrand(20);
//: Note: alternative syntax:
10 rrand: 20;
//: Variant 1: Repeat the process 100 times, and post the result each time.
100 do: { 10.rrand(20).postln; };
//: Variant 2: Repeat the process 100 times, and COLLECT the result in an array.
// Variant 2a: Use collect
100 collect: { 10.rrand(20); };
//: Variant 2b: Use dup
{ 10.rrand(20); }.dup(100);
//: Variant 2c: Use ! (bang)
{ 10.rrand(20) } ! 100;
//:Variant 3: Select the smallest and largest number from the resulting array:
var result;
result = { 10.rrand(20) } ! 100;
result.maxItem.postln;
result.minItem.postln;
//:
//: *** Write a program that boots the default server.
Server.default.boot;
//: *** Write a program that quits (stops) the default server.
Server.default.quit;
//: *** Write a program that creates a sine tone of frequency 440 and amplitude 0.1
//: *** Write a statement that stores the sine tone synth from the previous exercise in variable a and then a statement that stops the sound by freeing the synth.
//: *** Replace the synth stopping statement of the previous exercise, with a synth release statement, to create a fadeout of 5 seconds.
//: *** Write a program that starts a synth and then releases it after 1 second, using wait to time the statements and fork to create a routine that plays the program.
//: *** Change the above program so that it produces a sound of random frequency between 400 and 4000 herz.
//: *** Change the above porgram so that it produces a sound of randtom frequency corresponding to midi MIDI notes 60 to 80.
//: *** Put the above program in a function, and store it in environment variable =~short_piece=.  Run the function by sending it message =value=.
//: *** Create a routine that plays a piece of infinite duration by running the above function in a loop, with a wait time of 0.8 seconds.
//: *** Change the above routine so that the wait time is a random interval between 0.1 and 1.5 seconds.
//: *** Change the above routine so that the wait time is chosen at random from the numbers 0.1, 0.2, 0.4, 0.5, and 1.0.
//: *** Change the above program so that the amplitude varies at random between 0.05 and 0.25.
//: *** Change the above program so that the release times varies at random between 0.01 and 10.0.
