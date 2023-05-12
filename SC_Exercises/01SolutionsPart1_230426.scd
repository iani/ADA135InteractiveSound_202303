/* 26 Apr 2023 16:52
Part 1: Short solutions
*/

//: 01 Write a program that prints "Hello World"
"Hello World";
//: 02 Write a program that calculates 2 + 2.
2 + 2;
//: 03 Write a program that generates a random number between 0 and 9.
10.rand;
//: 04 Write a program that generates a random number between 10 and 20.
10 rrand: 20;
//:05 Write a program that boots the default server.
Server.default.boot;
//: 05 Write a program that quits (stops) the default server.
Server.default.quit;
//: 06 Write a program that creates a sine tone of frequency 440
// and amplitude 0.
{ SinOsc.ar(400, 0, 0.1) }.play;
//: 07 Write a statement that stores the sine tone synth from the
// previous exercise in variable a and then a statement that stops
// the sound by freeing the synth.
// 07a: Store the synth in variable a
a = { SinOsc.ar(400, 0, 0.1) }.play;
// 07b: stop the eynth. free stops the synth immediately and abruptly
// (no fadeout):
a.free;
//: 08 Replace the synth stopping statement of the previous exercise,
//with a synth release statement, to create a fadeout of 5 seconds.
a release: 5;
//: 09 Write a program that starts a synth and then releases it
// after 1 second, using wait to time the statements and fork to
// create a routine that plays the program.
{
	var synth;
	synth = { SinOsc.ar(400, 0, 0.1) }.play;
	1.wait;
	synth.release;
}.fork;
//: 10 Change the above program so that it produces a sound
// of random frequency between 400 and 4000 herz.
{
	var synth;
	synth = { SinOsc.ar(400 rrand: 4000, 0, 0.1) }.play;
	1.wait;
	synth.release;
}.fork;
//: 11 Change the above porgram so that it produces a sound
//of randtom frequency corresponding to a MIDI note from 60 to 80.
{
	var synth;
	synth = { SinOsc.ar(60.rrand(80).midicps, 0, 0.1) }.play;
	1.wait;
	synth.release;
}.fork;
//: 12 Put the above program in a function, and store it
// in environment variable =~short_piece=.  Run the function by sending it message =value=.
~short_piece = {
	{
		var synth;
		synth = { SinOsc.ar(60.rrand(80).midicps, 0, 0.1) }.play;
		1.wait;
		synth.release;
	}.fork;
};
~short_piece.value;
//: 13 Create a routine that plays a piece of infinite duration
// by running the above function in a loop, with a wait time of 0.8 seconds.
{
	var phrase;
	phrase = {
		var synth;
		synth = { SinOsc.ar(60.rrand(80).midicps, 0, 0.1) }.play;
		1.wait;
		synth.release;
	};
	loop {
		phrase.value;
		0.8.wait;
	};
}.fork;
//: 14 Change the above routine so that the wait time is a random
// interval between 0.1 and 1.5 seconds.
{
	var phrase;
	phrase = {
		var synth;
		synth = { SinOsc.ar(60.rrand(80).midicps, 0, 0.1) }.play;
		1.wait;
		synth.release;
	};
	loop {
		phrase.value;
		0.1.rrand(1.5).wait;
	};
}.fork;
//: 15 Change the above routine so that the wait time is chosen at
// random from the numbers 0.1, 0.2, 0.4, 0.5, and 1.0.
{
	var phrase;
	phrase = {
		var synth;
		synth = { SinOsc.ar(60.rrand(80).midicps, 0, 0.1) }.play;
		1.wait;
		synth.release;
	};
	loop {
		phrase.value;
		[0.1, 0.2, 0.4, 0.5, 1.0].choose.wait;
	};
}.fork;
//: 16 Change the above program so that the amplitude varies at
// random between 0.05 and 0.1.
{
	var short_piece;
	short_piece = {
		var synth;
		synth = { SinOsc.ar(60.rrand(80).midicps, 0, 0.05 rrand: 0.1) }.play;
		1.wait;
		synth.release;
	};
	loop {
		short_piece.value;
		[0.1, 0.2, 0.4, 0.5, 1.0].choose.wait;
	};
}.fork
//: Debuged  3 May 2023 08:31
{
	var short_piece;
	short_piece = {
		{
			var synth;
			synth = { SinOsc.ar(60.rrand(80).midicps, 0, 0.05 rrand: 0.1) }.play;
			1.wait;
			synth.release(0.3);
		}.fork
	};
	loop {
		short_piece.value;
		[0.1, 0.2, 0.4, 0.5, 1.0].choose.wait;
	};
}.fork

//: 17 Change the above program so that the release times varies
// at random between 0.01 and 10.0.
{
	var short_piece;
	short_piece = {
		{
			var synth;
			synth = { SinOsc.ar(60.rrand(80).midicps, 0, 0.01 rrand: 0.05) }.play;
			1.wait;
			synth.release(0.01 exprand: 5.0);
		}.fork;
	};
	loop {
		short_piece.value;
		exprand(0.1, 1.0).wait;
		// [0.1, 0.2, 0.4, 0.5, 1.0].choose.wait;
	};
}.fork;
//: Exercise: Add more variations.
{
	var short_piece;
	short_piece = {
		{
			var synth;
			synth = {
				[SinOsc, LFSaw].choose
				.ar(60.rrand(80).midicps, 0, 0.01 rrand: 0.05) }.play;
			1.wait;
			synth.release(0.01 exprand: 5.0);
		}.fork;
	};
	loop {
		short_piece.value;
		exprand(0.1, 1.0).wait;
		// [0.1, 0.2, 0.4, 0.5, 1.0].choose.wait;
	};
}.fork;
