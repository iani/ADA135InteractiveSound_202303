// ** Write a program that creates a sine tone of frequency 440 and amplitude 0.1
{ SinOsc.ar(440, 0, 0.1) }.play;
// Creates a synth that outputs on one channel.
// Note: to stop the sound press Control or command . (period, dot)
// Variant: Output on 2 channels
{ SinOsc.ar(440, 0, 0.1).dup }.play;
// Variant 2: Output on 2 channels, different frequencies
{ SinOsc.ar([440, 660], 0, 0.1) }.play;

// Variant 3: Output on 1 channel, 8 different frequencies
{ Mix(SinOsc.ar(400 * ({ 1 rrand: 8.0 } ! 8), 0, 0.1 / 8)) }.play;
// Note: divide amplitude by number of frequences, to keep the total sum
// of amplitudes up to the original 0.1.
// Note on rrand:
// Compare:
({ 1 rrand: 8.0 } ! 8)
// With:
({ 1 rrand: 8 } ! 8)
//:

// Note on harmonics: This sounds like 1 note only, because its frequencies
// are multipleas of the lowest frequency, i.e. harmonics
{ Mix(SinOsc.ar(400 * (1..8), 0, 0.1 / 8)) }.play;
