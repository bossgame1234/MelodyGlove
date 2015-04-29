import ddf.minim.*;
import ddf.minim.signals.*;
import processing.serial.*; 
 
Minim minim;
AudioOutput out;
 
SineWave[] sine = new SineWave[16];
float[] freq = new float[16];
float[] amp = new float[16];
float val =0;
Serial port;
float octave = 1;
float c = 261.63;
float cs = 277.18;
float d = 293.66;
float ds = 311.13;
float e = 329.63;
float f = 349.23;
float fs = 369.99;
float g = 392.00;
float gs = 415.30;
float a = 440.00;
float as = 466.16;
float b = 493.88;
float cc = 523.25;

void setup()
{
  size(500, 300, P2D);
  background(0, 0, 96);
  smooth();
  minim = new Minim(this);
  out = minim.getLineOut(Minim.MONO);
  
  //Oscillators
  for(int i = 0; i < 16; i++)
  {
    amp[i] = .1 / (i + 1);
    sine[i] = new SineWave(freq[i], amp[i], 44100);
    out.addSignal(sine[i]);
  }
  
  String arduioPort = Serial.list()[5];
  port = new Serial(this,arduioPort,9600);
}
void draw()
{
    fill(255);
  //five keys for piano keys C-G
  rect(0,0,100,300); //thumb = C
  rect(100,0,100,300); //index = D
  rect(200,0,100,300); //middle = E
  rect(300,0,100,300); //ring = F
  rect(400,0,100,300); //pinky = G
  
  fill(0);
  rect(70,0,60,200);
  rect(170,0,60,200);
  rect(270,0,60,200);
  rect(370,0,60,200);
  try{
  if(port.available()>0){
      fill(0);
  val = float(port.readStringUntil('\n'));
  text(val,600,300);
 if(val==11){
       rect(0,0,100,300); 
    for(int i = 0; i < 16; i++)
    {
      out.enableSignal(i) ;
      freq[i] = c * (i + 1) * octave;
      sine[i].setFreq(freq[i]);
      sine[i].setAmp(amp[i]);
    }
  }else if(val==12){
        rect(100,0,100,300);
        for(int i = 0; i < 16; i++)
    {
           out.enableSignal(i) ;
      freq[i] = d * (i + 1) * octave;
      sine[i].setFreq(freq[i]);
      sine[i].setAmp(amp[i]);
    }
  }else if(val==13){
        rect(200,0,100,300);
   for(int i = 0; i < 16; i++)
    {
           out.enableSignal(i) ;
      freq[i] = e * (i + 1) * octave;
      sine[i].setFreq(freq[i]);
      sine[i].setAmp(amp[i]);
    }
  }else if(val==14){
        rect(300,0,100,300);
   for(int i = 0; i < 16; i++)
    {
           out.enableSignal(i) ;
      freq[i] = f * (i + 1) * octave;
      sine[i].setFreq(freq[i]);
      sine[i].setAmp(amp[i]);
    }
  }else if(val==15){
        rect(400,0,100,300);
       for(int i = 0; i < 16; i++)
    {
           out.enableSignal(i) ;
      freq[i] = g * (i + 1) * octave;
      sine[i].setFreq(freq[i]);
      sine[i].setAmp(amp[i]);
    }
  }else{
          for(int i = 0; i < 16; i++)
    {
    out.disableSignal(i) ;
    }
  }
            
  }
  }catch(NullPointerException e ){
   
  }
  
}

