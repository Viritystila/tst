(

SynthDef('kick', {
  var envelope = Saw.ar(2, 1, 0);
  var pitch = Saw.ar(2, 20, 55);
  var sound = SinOsc.ar(pitch, 0, envelope);
  Out.ar(0, Pan2.ar(sound, 0));
}).play;

SynthDef('hihat', {
  var envelope = Saw.ar(4, 0.1, 0);
  var sound = WhiteNoise.ar(envelope);
  Out.ar(0, Pan2.ar(sound, 0));
}).play;

SynthDef('other', {
  var envelope = LFNoise0.ar(8, 0.2, 0.1);
  var pitch = [SinOsc.kr(1/4, pi, 220, 110), SinOsc.kr(1/4, pi, 110, 220)];
  var sound = SinOsc.ar(pitch, 0, envelope);
  Out.ar(0, Pan2.ar(sound, 0));
}).play;

)