/* 12 May 2023 17:34
Explain range message.
*/

{
	SinOsc.ar(
		LFNoise0.kr(10).range(400, 400 * 2),
		0,
		0.1
	).dup;
}.play;
//:
{
	SinOsc.ar(
		LFNoise1.kr(10).range(400, 400 * 2),
		0,
		0.1
	).dup;
}.play;
//:
{
	SinOsc.ar(
		LFNoise2.kr(10).range(400, 400 * 2),
		0,
		0.1
	).dup;
}.play;
//:
{
	SinOsc.ar(
		SinOsc.kr(10).range(400, 400 * 2),
		0,
		0.1
	).dup;
}.play;
//:
{
	SinOsc.ar(
		LFSaw.kr(5).range(400, 400 * 2),
		0,
		0.1
	).dup;
}.play;
//:
{
	SinOsc.ar(
		LFSaw.kr(
			MouseX.kr(0.5, 25)
		).range(400, 400 * 2),
		0,
		0.1
	).dup;
}.play;
//:
{
	SinOsc.ar(
		LFSaw.kr(
			LFNoise1.kr(1).range(0.1, 150)
		).range(400, 400 * 2),
		0,
		0.1
	).dup;
}.play;