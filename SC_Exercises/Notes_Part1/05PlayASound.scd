//: 06 Write a program that creates a sine tone of frequency 440
// and amplitude 0.
{ SinOsc.ar(400, 0, 0.1) }.play;
/* Notes:
{  } is a function
SinOsc is a ugen = UGen = Unit Generator
{ SinOsc.ar(...) } is a Ugen in a function -> This is called a UGen Function.
	In other words it is a function that can create a synth.

{ SinOsc.ar(400, 0, 0.1) }.play;
Sending the message play to a UGen function, creates a synth.

*/

//: 07 Write a statement that stores the sine tone synth from the
// previous exercise in variable a and then a statement that stops
// the sound by freeing the synth.
// 07a: Store the synth in variable a
a = { SinOsc.ar(400, 0, 0.1) }.play;
// 07b: stop the eynth. free stops the synth immediately and abruptly
// (no fadeout):
a.free;
//:
a release: 5;