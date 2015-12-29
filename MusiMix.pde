import processing.video.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;



import cc.arduino.*;
import processing.serial.*;
Minim minim;
Movie myMovie[];
Movie myMovie2;
int loser=2;
int winner=0;
PImage [] pic = new PImage[2];
AudioPlayer[] Song = new AudioPlayer[20];
AudioPlayer[] Song2 = new AudioPlayer[5];
AudioPlayer Song3;
float t0;
float t;
int index = 0;
float a = random(0, 20);
int x1 = (int)a;
float b = random(0,20);
int clr =0;
int y1 = (int)b;
float a2 = random(0,20);

int x2 = (int)a2;
float b2 = random(0,20);

int y2 = (int)b2;
float a3 = random(0,20);
//int x3;
int x3 = (int)a3;
float b3 = random(0, 4);
//int y3;
int y3 = (int)b3;
float a4 = random(0, 20);
//int x4;
int x4 = (int)a4;
float b4 = random(0, 20);
//int y4;
int y4 = (int)b4;
float a5 = random(0, 4);
//int x5;
int x5 = int(a5);
float b5 = random(0, 20);
//int y5;
int y5 = (int) b5;
float i = random(0,4);
int x = int(i);
 
void setup() {
  size(720, 576);
    while(x1 == x2 || x1 == x3 || x1 == x4 || x1== x5 || x2 == x1 || x2 == x3 || x2 == x4 || x2== x5 || x3 == x2 || x3 == x1 || x3 == x4 || x3== x5 || x4 == x2 || x4 == x3 || x4 == x1 || x4== x5 || x5 == x2 || x5 == x3 || x5 == x4 || x5== x1)
  {
    float a = random(0, 20);
int x1 = (int)a;
float b = random(0,20);

int y1 = (int)b;
float a2 = random(0,20);

int x2 = (int)a2;
float b2 = random(0,20);

int y2 = (int)b2;
float a3 = random(0,20);
//int x3;
int x3 = (int)a3;
float b3 = random(0, 4);
//int y3;
int y3 = (int)b3;
float a4 = random(0, 20);
//int x4;
int x4 = (int)a4;
float b4 = random(0, 20);
//int y4;
int y4 = (int)b4;
float a5 = random(0, 4);
//int x5;
int x5 = int(a5);
float b5 = random(0, 20);
  }
 minim = new Minim(this);
  myMovie = new Movie[5];
 
  myMovie[0]  = new Movie(this, "clip1.mp4");
  myMovie[1]  = new Movie(this, "clip2.mp4");
  myMovie[2]  = new Movie(this, "clip3.mp4");
  myMovie[3] = new Movie(this, "clip4.mp4");
  myMovie[4] = new Movie(this, "clip5.mp4");
  pic[0] = loadImage("lose.jpg");
  pic[1] = loadImage("winner.jpg");
  myMovie[0].pause();
  myMovie[1].pause();
  myMovie[2].pause();
  myMovie[3].pause();
  myMovie[4].pause();
  
  Song[0] = minim.loadFile("Song1.mp3");
  Song[1] = minim.loadFile("Song2.mp3");
  Song[2] = minim.loadFile("Song3.mp3");
  Song[3] = minim.loadFile("Song4.mp3");
  Song[4] = minim.loadFile("Song5.mp3");
  Song[5] = minim.loadFile("Song6.mp3");
  Song[6] = minim.loadFile("Song7.mp3");
  Song[7] = minim.loadFile("Song8.mp3");
  Song[8] = minim.loadFile("Song9.mp3");
  Song[9] = minim.loadFile("Song10.mp3");
  Song[10] = minim.loadFile("Song11.mp3");
  Song[11] = minim.loadFile("Song12.mp3");
  Song[12] = minim.loadFile("Song13.mp3");
  Song[13] = minim.loadFile("Song14.mp3");
  Song[14] = minim.loadFile("Song15.mp3");
  Song[15] = minim.loadFile("Song16.mp3");
  Song[16] = minim.loadFile("Song17.mp3");
  Song[17] = minim.loadFile("Song18.mp3");
  Song[18] = minim.loadFile("Song19.mp3");
  Song[19] = minim.loadFile("Song20.mp3");
    while(x1 == x2 || x1 == x3 || x1 == x4 || x1== x5 || x2 == x1 || x2 == x3 || x2 == x4 || x2== x5 || x3 == x2 || x3 == x1 || x3 == x4 || x3== x5 || x4 == x2 || x4 == x3 || x4 == x1 || x4== x5 || x5 == x2 || x5 == x3 || x5 == x4 || x5== x1)
  {
    float a = random(0, 20);
int x1 = (int)a;
float b = random(0,20);

int y1 = (int)b;
float a2 = random(0,20);

int x2 = (int)a2;
float b2 = random(0,20);

int y2 = (int)b2;
float a3 = random(0,20);
//int x3;
int x3 = (int)a3;
float b3 = random(0, 4);
//int y3;
int y3 = (int)b3;
float a4 = random(0, 20);
//int x4;
int x4 = (int)a4;
float b4 = random(0, 20);
//int y4;
int y4 = (int)b4;
float a5 = random(0, 4);
//int x5;
int x5 = int(a5);
float b5 = random(0, 20);
  }
  Song2[0] = Song[x1];
  Song2[1] = Song[x2];
  Song2[2] = Song[x3];
  Song2[3] = Song[x4];
  Song2[4] = Song[x5];
  int num =2;
  Song3 = Song2[x];
  //Song3.loop(2);

}
 
 
void draw() {
  background(clr);
 
    
  if (myMovie[index].available() ) {
    myMovie[index].read();
  }
  image(myMovie[index], 0, 0);
 
  if (t > myMovie[index].duration() + t0) {
    //println("finished! "+index);
  }
 
  t  = millis()/1000;
 
  if ( winner == 1){
    image(pic[1],0,0);
  }
  else if (loser == 1){
    image(pic[0],0,0);
}
}
 
void keyPressed() {
  if (key == 'a') {
    myMovie[0].read();
    myMovie[0].play();
    index = 0;
    Song2[0].play();
    t0 = millis()/1000;
    //rewind();
  }
 
  if (key == 'b') {
    myMovie[1].read();
    myMovie[1].play();
    index = 1;
    t0 = millis()/1000;
    Song2[1].play();
    //rewind();
  }
  if (key == 'c') {
    myMovie[2].read();
    myMovie[2].play();
    index = 2;
    t0 = millis()/1000;
    Song2[2].play();
    //rewind();
  }
  if(key == 'd'){
    myMovie[3].read();
    myMovie[3].play();
    t0 = millis()/1000;
    Song2[3].play();
    index = 3;
    //rewind();
  }
  if(key == 'f'){
    myMovie[4].read();
    myMovie[4].play();
    t0=millis()/1000;
    Song2[4].play();
    index = 4;
    //rewind();
   
  }

  if(key == 'r')
  {
   Song3.rewind();
   myMovie[4].stop();
   background (255);
  }
  if(key == 't')
 {
  //float i = random(0,4);
  // int x = int(i);
   Song3.play();
   print(x);
 //rewind();
   
 }
 if(x==1){
   if (keyCode == UP)
   {
   winner = 1;
   text("YOU WIN", 400, 400);
   }
   if(keyCode !=UP){
    loser = 1;
   text("YOU LOSE", 400, 400);
 }
 }
 else if(x==2){
   if(keyCode == DOWN){
     winner = 1;
   text("YOU WIN", 400, 400);
   }
   if (keyCode != DOWN){
    loser = 1;
   text("YOU LOSE", 400, 400);
   }
 }
 else if(x==3){
   if(keyCode == LEFT){
   winner = 1;
   text("YOU WIN", 400, 400);
   }
   if (keyCode != LEFT){
    loser = 1;
   text("YOU LOSE", 400, 400);
   }
 }
 else if (x==4){
   if(keyCode == RIGHT){
   winner = 1;
   text("YOU WIN", 400, 400);
   }
   if (keyCode != RIGHT){
     loser =1;
   text("YOU LOSE", 400, 400);
 }
}
else if ( x==0){
   if(keyCode == ENTER){
   winner = 1;
   text("YOU WIN", 400, 400);
   }
   if(keyCode != ENTER){
    loser = 1;
   text("YOU LOSE", 400, 400);
 }
}
}
 //void rewind(){
 //  for (x= 0; x<=4; x=x+1){
 //     Song3=Song2[x];
 //     Song3.rewind();
      
 //  } 
//}//
//v//oid loseImage(){
 //    image(pic[0],0,0);
 //  }
 //  void winImage(){
 //    image(pic[1],0,0);
 //  }