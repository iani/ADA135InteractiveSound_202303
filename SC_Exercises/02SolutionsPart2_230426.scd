// Part 2:

//: 02.01 Write a program that loads a sound file (wav or aiff) into a buffer,
// and stores the buffer in environment variable =~buf=.
b = Buffer.read(Server.default, "/Users/iani/sc-projects/global/audiofiles/Malama/flute.aif");
// c = Buffer.read(Server.default, "/Users/iani/sc-projects/global/audiofiles/Malama/vgliss.aif")
//: Test the two loaded buffers:
b.play;
//:
c.play;
//:Find out info about the buffers:
b; // posts all info.
//:some things one can find out:
b.numChannels.postln;
b.numFrames.postln;
b.path.postln;
b.sampleRate.postln;
//==== Playing buffers with playbuf.
//:
a = { PlayBuf.ar(1, 1, -2.reciprocal, 1, 0, 1, 2) }.play;
//:
a = { PlayBuf.ar(1, 1, \tachitita.kr(1), 1, 0, 1, 2) }.play;
//:
a.set(\tachitita, 2);
a.set(\tachitita, 0.2);

a.set(\tachitita, -2);
a.set(\tachitita, -2.reciprocal);
a.set(\tachitita, -20.reciprocal);




//: 02.01 Write a program that plays the buffer =~buf= once.
//: 02.02 Write a program that plays the buffer =~buf= in a loop.
//: 02.03 Change the above program so that it playes the buffer backwards.
//: 02.04 Change the above program so that it plays the buffer with a rate varying continuously at random between 0.2 and 2.0.
