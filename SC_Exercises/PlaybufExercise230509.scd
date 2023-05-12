// Wed 10 May 2023 09:52
//: Load buffeers from a folder using an interactive dialogue window.

Server.default.boot;
//:
FileDialog({ | p | ~folder = p[0] }, fileMode: 2)

~folder;

~allfiles = PathName(~folder).files;
~allfiles.size;
// ~allfiles.first.extension.asSymbol;
//:
~audiofiles = ~allfiles.select({ | p |
	[\wav, \WAV, \aif, \aiff] includes: p.extension.asSymbol;
}) collect: _.fullPath;

~buffers = ~audiofiles collect: { | p | Buffer.read(Server.default, p) };
//:
~buffers.first.play;
//:
~buffers[1].play;
~buffers[2].play;
//:
{
	~buffers do: { | p |
		p.play;
		1.5.wait;
	};
}.fork;
//:
r = {
	Server.default.record;
	1.wait;
	~buffers[0].play;
	1.wait;
	~buffers[2].play;
	0.75.wait;
	~buffers[0].play;
	1.wait;
	~buffers[2].play;
	0.75.wait;
	{ PlayBuf.ar(1, ~buffers[4], 0.5) }.play;
	5.wait;
	Server.default.stopRecording;
}.fork;
//: loop inside the score.
r = {
	Server.default.record;
	1.wait;
	~buffers[0].play;
	1.wait;
	~buffers[2].play;
	0.75.wait;
	~buffers[0].play;
	1.wait;
	~buffers[2].play;
	0.75.wait;
	{ PlayBuf.ar(1, ~buffers[3], 2) }.play;
	0.25;
	~buffers[2..].reverse do: { | b |
		b.postln;
		{ PlayBuf.ar(1, b, 1) }.play;
		1.5.wait;
	};
	5.wait;
	Server.default.stopRecording;
}.fork;
//:
{
	~buffers[2..].reverse do: { | b |
		b.postln;
		{ PlayBuf.ar(1, b, -2.0, 1, b.numFrames) }.play;
		1.5.wait;
	};

}.fork;
//:
{
	~buffers[2..].reverse do: { | b |
		b.postln;
		{ PlayBuf.ar(1, b, -2.0, loop: 1) }.play;
		1.5.wait;
	};

}.fork;
//:
{
	~buffers[2..].reverse do: { | b |
		b.postln;
		{ PlayBuf.ar(1, b,
			LFNoise0.kr(5.reciprocal).range(-3, -0.3)
			, loop: 1) }.play;
		1.5.wait;
	};

}.fork;
//:
{
	~buffers[2..].reverse do: { | b |
		b.postln;
		{ PlayBuf.ar(1, b,
			LFNoise1.kr(9.reciprocal).range(-3, -0.3)
			, loop: 1) }.play;
		1.5.wait;
	};

}.fork;
//:
~buffers[2..].reverse;
//:

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