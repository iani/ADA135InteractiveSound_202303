// Mon  8 May 2023 19:20
// Run this only if you have installed sc-hacks-redux:
// ====
Buffer.all do: { | b | [b, b.bufnum, b.numChannels].postln; };
\a1.buf;
\hoge.buf;

//// ======
// Otherwise, load 2 buffers and use buffer numbers 0 or 1.


//: Loading buffers:
b = Buffer.read(Server.default, "/Users/iani/sc-projects/global/audiofiles/Malama/flute.aif");
c = Buffer.read(Server.default, "/Users/iani/sc-projects/global/audiofiles/Malama/vgliss.aif")
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

a release: 5;
//:
a = { PlayBuf.ar(1, \vgliss.bufnum, \tachitita.kr(1), \trig.tr(1), \start.kr(70000), 0, 0) }.play;
//:
r = {
	loop {
		(1..100) * 5000
		do: { | dt |
			a.set(
				//	\tachitita, 5.reciprocal,
				\start, dt.postln,
				\trig, 1);
			0.25.wait;
		}
	}
}.fork;
//:
a.set(\trig, 1);
//:
a.set(\tachitita, 5.reciprocal, \trig, 1);

//:
r = {
	loop {
		[0.1, 0.2, 0.1, 0.1, 0.25] do: { | dt |
			a.set(\tachitita, (1..12).choose.reciprocal,
				\start, dt,
				\trig, 1);
			dt.wait;
		}
	}
}.fork;
//:
r = {
	loop {
		[0.1, 0.2, 0.1, 0.1, 0.25] do: { | dt |
			a.set(\tachitita, (1..12).choose.reciprocal, \trig, 1);
			dt.wait;
		}
	}
}.fork;
//:
r.stop;