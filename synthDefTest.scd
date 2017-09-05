(
SynthDef(\sine, {arg out=0, amp=0.1, freq=50, envdur=10, pan=0.0;
	//var x = SinOsc.ar(MouseX.kr(1, 50));
	var firstTemp = MouseX.kr(0, 1);
	var secondTemp = MouseY.kr(1, 20);

	var envelope= SinOsc.ar(secondTemp, 3, 2)+SinOsc.ar(1, 3, 0) + Pulse.ar(1, 0.5, 1) + Saw.ar(1);
	var envelope2= Env(SinOsc.ar(secondTemp, 3, 2)+SinOsc.ar(1, 3, 0) + Pulse.ar(1, 0.5, 1) + Saw.ar(1));

	var osc = SinOsc.ar(freq, 0, envelope);
	//var osc2 = SinOsc.ar(freq, 0, osc);

	var noise = PinkNoise.ar(envelope * firstTemp);
	var signal = Pan2.ar(osc + noise); //*EnvGen.ar(Env.perc(1.0, envdur), doneAction:2);

	Out.ar(out, signal);

}).add;

//x = Synth.new("\sine", ["amp", 2.0,"pan", 0.0,"freq", 50 ]);
//a=Pdef(\test1, Pbind(\instrument, \sine), \dur, 0.1).play;
a=Pbind(\instrument, \sine).play; // it plays our synthdef


)




