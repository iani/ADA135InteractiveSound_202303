//: Collect paths (files)
a = "C:\\Projects\\AVARTS\\Diadrastikos Hxos\\Malama\\Malama\\*.aif".pathMatch;
a.size;
//: Show paths
a do: _.postln;

//: Start Server
Server.default.boot;
//:
z = a collect: {|p| Buffer.read(Server.default, p)};

z do: _.postln;
z.size;


z.first.play;
z.last.play;
z[2].play;

z do: _.play;


//:
f = {
	{
		z do: {|b|
			b.play;
			2.wait;
		}
	}.fork;
}
//:
f.value;

{
	loop {
		f.value;
		rrand(4,7).wait;
	}

}.fork;

//: scramble "hello world".scramble;
g = {
	{
		z.scramble do: {|b|
			b.play;
			2.wait;
		}
	}.fork;
}



{
	loop {
		g.value;
		rrand(4,7).wait;
	}

}.fork;

//: Extensions
//: 1: Change rate, amplitude, startPos, loop parameters.
// For this, instead of b.play use a custom function with PlayBuf.
// See examples from previous session!
//: 2. Play one after the other, without overlap.
// Calculate the wait time from the size of the buffer
// use this formula to calculate the duration:
// b.numFrames / b.sampleRate;
// example:
a = Buffer.all.first;
a.numFrames / a.sampleRate;
//: 3: Play one after the other, using custom delay times each time.
// Step 1: Hard code the times coupled with the buffers in an array:
b = Buffer.all;
{
	[
		b[4], 3,
		b[0], 0.5,
		...
	] do: { | bt |
		b[0].play;
		b[1].wait;
	}
}.fork;

//: