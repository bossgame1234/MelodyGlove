import ddf.minim.*;
import ddf.minim.signals.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import processing.serial.*; 
import processing.opengl.*; 
Minim minim;
AudioPlayer sou;
int state = 0; 
float val =0;
Serial port;


void setup()
{
  size(500, 300, OPENGL);
  background(0, 0, 0);
  smooth();
  noStroke();
  minim = new Minim(this);
  
  String arduioPort = Serial.list()[5];
  port = new Serial(this,arduioPort,9600);
}
void draw()
{
  background(0);
if(state==0){
  fill(204,0,204);
text("!!!! LET'S THE ROCK BEGIN !!!!",width/2-85,height/2);
}else if(state==1){
  fill(255,51,51);
text("!!!! BURN IT UP !!!!",width/2-60,height/2);
}else if(state==2){
    fill(255,251,51);
text("!!!! SAND STORM !!!!",width/2-60,height/2);
}else if(state==3){
      fill(51,255,51);
text("!!!! HURRICANE !!!!",width/2-55,height/2);
}else if(state==4){
      fill(51,153,255);
text("!!!! SKY FALL !!!!",width/2-55,height/2);
}else if(state==5){
      fill(255,102,178);
text("!!!! THIS IS THE ROCK !!!!",width/2-75,height/2);
}else if(state==6){
   fill(255,102,178);
text("!!!! COMBO !!!!",width/2-55,height/2);
}
fill(255,51,51);
text("KICK DRUM",20,280);
fill(255,255,51);
text("HI HAT",130,280);
fill(51,255,51);
text("SNARE",230,280);
fill(51,153,255);
text("TOM DRUM",320,280);
fill(255,102,178);
text("CYMBAL",430,280);
  try{
  if(port.available()>0){
  val = float(port.readStringUntil('\n'));
  //text(val,400,240);  
if(val==1){
   state = 6;
     fill(255,51,51);
         rect(0,0,100,300);
   sou = minim.loadFile("kickdrum9.wav",2048);
   sou.play();
     fill(255,255,51);
    rect(100,0,100,300);
    sou = minim.loadFile("hihat75.wav",2048);
    sou.play();
    
}else if(val==2){
   state = 6;
     fill(255,51,51);
         rect(0,0,100,300);
   sou = minim.loadFile("kickdrum9.wav",2048);
   sou.play();
         fill(51,255,51);
   sou = minim.loadFile("snaredrum3.wav",2048);
   sou.play();
        rect(200,0,100,300);
    
    }else if(val==3){
   state = 6;
   fill(255,51,51);
   rect(0,0,100,300);
   sou = minim.loadFile("kickdrum9.wav",2048);
   sou.play();
   fill(51,153,255);
   rect(300,0,100,300);
   sou = minim.loadFile("tomtomdrum1.wav",2048);
   sou.play();
   }else if(val==4){
   state = 6;
   fill(255,51,51);
   rect(0,0,100,300);
   sou = minim.loadFile("kickdrum9.wav",2048);
   sou.play();
   fill(255,102,178);
   rect(400,0,100,300);
    sou = minim.loadFile("cymbal3.wav",2048);
    sou.play();
    
   }else if(val==5){
   state = 6;
    fill(255,255,51);
    rect(100,0,100,300);
    sou = minim.loadFile("hihat75.wav",2048);
    sou.play();
    fill(51,255,51);
    sou = minim.loadFile("snaredrum3.wav",2048);
    sou.play();
    rect(200,0,100,300);
   }else if(val==6){
    state = 6;
    fill(255,255,51);
    rect(100,0,100,300);
    sou = minim.loadFile("hihat75.wav",2048);
    sou.play();
    fill(51,153,255);
    rect(300,0,100,300);
    sou = minim.loadFile("tomtomdrum1.wav",2048);
    sou.play();
    }else if(val==7){
   state = 6;
    fill(255,255,51);
    rect(100,0,100,300);
    sou = minim.loadFile("hihat75.wav",2048);
    sou.play();
    fill(255,102,178);
    rect(400,0,100,300);
    sou = minim.loadFile("cymbal3.wav",2048);
    sou.play();

    }else if(val==8){
    state = 6;
    fill(51,255,51);
    sou = minim.loadFile("snaredrum3.wav",2048);
    sou.play();
    rect(200,0,100,300);
           fill(51,153,255);
        rect(300,0,100,300);
   sou = minim.loadFile("tomtomdrum1.wav",2048);
   sou.play();
    
    }else if(val==9){
    state = 6;
    fill(51,255,51);
    sou = minim.loadFile("snaredrum3.wav",2048);
    sou.play();
    rect(200,0,100,300);
    fill(255,102,178);
    rect(400,0,100,300);
    sou = minim.loadFile("cymbal3.wav",2048);
    sou.play();
    
    }else if(val==10){
   state = 6;
   fill(51,153,255);
   rect(300,0,100,300);
   sou = minim.loadFile("tomtomdrum1.wav",2048);
   sou.play();
   fill(255,102,178);
   rect(400,0,100,300);
    sou = minim.loadFile("cymbal3.wav",2048);
    sou.play();
    
  }else if(val==11){
   state = 1;
     fill(255,51,51);
         rect(0,0,100,300);
   sou = minim.loadFile("kickdrum9.wav",2048);
   sou.play();
    
  }else if(val==12){
    state = 2;
    fill(255,255,51);
    rect(100,0,100,300);
    sou = minim.loadFile("hihat75.wav",2048);
    sou.play();
  }else if(val==13){
    state = 3;
      fill(51,255,51);
   sou = minim.loadFile("snaredrum3.wav",2048);
   sou.play();
        rect(200,0,100,300);
  }else if(val==14){
    state = 4;
          fill(51,153,255);
        rect(300,0,100,300);
   sou = minim.loadFile("tomtomdrum1.wav",2048);
   sou.play();
  }else if(val==15){
    state = 5;
       fill(255,102,178);
        rect(400,0,100,300);
    sou = minim.loadFile("cymbal3.wav",2048);
    sou.play();
  }else{
    state=0;
  }
  }
  }catch(NullPointerException e){
    
  }
            
  }
  
  

