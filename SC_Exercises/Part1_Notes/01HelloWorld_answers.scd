//: ** Write a program that prints "Hello World"
// Answers to the exercises in 01HelloWorld.

//: - Write a program with many statements, and add 'postln' to each statement
"good".postln;
"morning today".postln;
"how are you".postln;
"well thank you".postln;
"Hello World".postln;
//: contrast to what happens if you do not postline each statement
"good";
"morning today";
"how are you";
"well thank you";
"Hello World";
//: - Write a program that runs postln on a collection (for example, an Array) of objects
(5..12) do: _.postln; // note: (num..num) creates an array.
/*
Note: _.postln; takes each element in the array (5..12) and sends it the message
postln.

Note2: The syntax do: is an alternative to .do({})
*/
//:
[
"good",
"morning today",
"how are you",
"well thank you",
"Hello World"] do: _.postln;
//: - Write a program that runs postln on each character (letter) of "Hello World".
"Hello World" do: _.postln;
//: The above program sends postln to each character in the string "Hello World".
// To find out how many characters are in "Hello World" run this:
"Hello World".size;
// To get the first character, run this:
"Hello World"[0];
// To get the second character, run this:
"Hello World"[1];
// To reverse it run:
"Hello World".reverse;
// To scramble it in random way run:
"Hello World".scramble;
// Note: A symbol is different from a String. It does not show its characters,
// but behaves like one single object:
'Hello World'.size; // 0 size means that this object is not a collection.
// it has no other objects that we can access by index or key.
// You cannot send the message "do" to something that is not a collection.
'Hello World' do: _postln;
//: - Write a program the posts "Hello World" 20 times.
10 do: { "Hello World".postln; };
//:Write a program that posts "Hello World" with the characters in random order.
"Hello World".scramble;
//:Extend the above to post the characters in random order on separate lines.
"Hello World".scramble do: _.postln;
//: - Write a program that plays each letter of Hello World
// as a note of different pitch.
// Preparation:
// "Hello World" do: { | a | a.ascii.postln };
//: Solution:
{
	"Hello World" do: { | a |
		(freq: a.ascii.midicps, dur: 0.25).play;
		0.25.wait;
	}
}.fork;
//:Variant
Pbind(\freq, Pseq("Hello World".ascii.midicps, 5), \dur, 0.25).play;
