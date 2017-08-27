(

var kick = {
	var envelope= SinOsc.kr(1, pi, 2) + Pulse.ar(1, 0.5, 1) + Saw.ar(1);
	var osc = SinOsc.ar(50, 0, envelope);
	var noise = PinkNoise.ar(envelope * 0.03);
	Pan2.ar(osc + noise);
};

var synth = {
	var envelope= Pulse.ar(2, 0.5, 0.8);
	var osc = SinOsc.ar(envelope * 450);
	Pan2.ar(osc);
};

kick.play();
synth.play();

)