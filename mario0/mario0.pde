PImage marioimage;

boolean isHandMovementDetectorWindowCreated = false;
int loadingScreenCounter=0;
Mario myMario;
PImage backgroundImg, hole, cloud;
int[] randomHolePosition = new int[50]; //50個のホール

int[] randomCloudPositionx = new int[50]; //50個の雲のX位置
int[] randomCloudPositiony = new int[50]; //50個の雲のY位置

float xPos; //キャラクターのX位置
float yPos; //キャラクターY位置

boolean gameOver = false; 
int startTime, currentTime;

void setup() { 
  PFont font = createFont("ARIALUNI",32);
  textFont(font);
  startTime = millis();
  currentTime = 0;
  smooth();
  noStroke();
  
  marioimage = loadImage("Wing_Mario.png");
  marioimage.resize(80,80);
  
  myMario = new Mario(50,530);
  
  backgroundImg = loadImage("game-background.jpg");
  
  hole = loadImage("hole.png");
  
  cloud = loadImage("cloud.jpg");
  
  //50個のホールを作る
  randomHolePosition[0] = 250; 
  for(int i=1; i<50; i++) {    
    randomHolePosition[i] = randomHolePosition[i-1]+int(random(150,800));
  }  
  randomHolePosition = sort (randomHolePosition);    
     
  //50個の雲を作る
  randomCloudPositiony[0] = 25;
  randomCloudPositionx[0] = 250;  
  for(int i=1; i<50; i++) {       
    randomCloudPositionx[i] = randomCloudPositionx[i-1]+int(random(150,800));
    randomCloudPositiony[i] = randomCloudPositiony[i-1]+int(random(20,60));
  }
  randomCloudPositionx = sort (randomCloudPositionx);
        
  String[] args = {"TwoFrameTest"};
  HandMovementDetector sa = new HandMovementDetector();
  PApplet.runSketch(args, sa);
    
}

void settings() {
  size(1200,800); 
}

void initialization() {
  //50個のホールを作る
  randomHolePosition[0] = 250; 
  for(int i=1; i<50; i++) {    
    randomHolePosition[i] = randomHolePosition[i-1]+int(random(150,800));
  }  
  randomHolePosition = sort (randomHolePosition);    
     
  //50個の雲を作る
  randomCloudPositiony[0] = 25;
  randomCloudPositionx[0] = 250;  
  for(int i=1; i<50; i++) {       
    randomCloudPositionx[i] = randomCloudPositionx[i-1]+int(random(150,800));
    randomCloudPositiony[i] = randomCloudPositiony[i-1]+int(random(20,60));
  }
  randomCloudPositionx = sort (randomCloudPositionx);
  currentTime =0;
  startTime = millis();
}
 
void draw() {  
  surface.setLocation(660,50);
  //ロード画面
  if(isHandMovementDetectorWindowCreated == false) {
    background(255, 204, 0);
    textSize(32);
    fill(0,0,127);
    text("緑の線の上に拳を上げて、マリオを動かしましょう！", 250,50); 
  }
  if (gameOver == false && isHandMovementDetectorWindowCreated == true) {
    background(backgroundImg);
    
    //50個のホールをランダムで現れるように
    for(int i=0; i<50; i++){
     if (randomHolePosition[i] >= -75) {
      randomHolePosition[i] = randomHolePosition[i]-1;
      image(hole, randomHolePosition[i], 530,101, 92);
     }
    }
    
    //50個の雲をランダムで現れるように
    for(int i=0; i<50; i++){
     if(randomCloudPositionx[i] >= -75) {
      randomCloudPositionx[i] = randomCloudPositionx[i]-1;  
      image(cloud, randomCloudPositionx[i], randomCloudPositiony[i],101, 92);
     }  
    }

    myMario.move();
    myMario.display(); 
    checkGameOver(); 
    currentTime = millis() - startTime;    
    textSize(32);
    fill(0,0,127);
    text("Time: "+round(currentTime/1000), 20, 50); 
  }
  
}

void checkGameOver() {
  if (((0<=randomHolePosition[0] && randomHolePosition[0]<=110) &  yPos > 480) || ((0<=randomHolePosition[1] && randomHolePosition[1]<=110) &  yPos > 480) || ((0<=randomHolePosition[2] && randomHolePosition[2]<=110) &  yPos > 480) || ((0<=randomHolePosition[3] && randomHolePosition[3]<=110) &  yPos > 480) || ((0<=randomHolePosition[4] && randomHolePosition[4]<=110) &  yPos > 480) || ((0<=randomHolePosition[5] && randomHolePosition[5]<=110) &  yPos > 480) || ((0<=randomHolePosition[6] && randomHolePosition[6]<=110) &  yPos > 480) || ((0<=randomHolePosition[7] && randomHolePosition[7]<=110) &  yPos > 480) || ((0<=randomHolePosition[8] && randomHolePosition[8]<=110) &  yPos > 480) || ((0<=randomHolePosition[9] && randomHolePosition[9]<=110) &  yPos > 480) || ((0<=randomHolePosition[10] && randomHolePosition[10]<=110) &  yPos > 480) || ((0<=randomHolePosition[11] && randomHolePosition[11]<=110) &  yPos > 480) || ((0<=randomHolePosition[12] && randomHolePosition[12]<=110) &  yPos > 480) || ((0<=randomHolePosition[13] && randomHolePosition[13]<=110) &  yPos > 480) || ((0<=randomHolePosition[14] && randomHolePosition[14]<=110) &  yPos > 480) || ((0<=randomHolePosition[15] && randomHolePosition[15]<=110) &  yPos > 480) || ((0<=randomHolePosition[16] && randomHolePosition[16]<=110) &  yPos > 480) || ((0<=randomHolePosition[17] && randomHolePosition[17]<=110) &  yPos > 480) || ((0<=randomHolePosition[18] && randomHolePosition[18]<=110) &  yPos > 480) || ((0<=randomHolePosition[19] && randomHolePosition[19]<=110) &  yPos > 480) || ((0<=randomHolePosition[20] && randomHolePosition[20]<=110) &  yPos > 480) || ((0<=randomHolePosition[21] && randomHolePosition[21]<=110) &  yPos > 480) || ((0<=randomHolePosition[22] && randomHolePosition[22]<=110) &  yPos > 480) || ((0<=randomHolePosition[23] && randomHolePosition[23]<=110) &  yPos > 480) || ((0<=randomHolePosition[24] && randomHolePosition[24]<=110) &  yPos > 480) || ((0<=randomHolePosition[25] && randomHolePosition[25]<=110) &  yPos > 480) || ((0<=randomHolePosition[26] && randomHolePosition[26]<=110) &  yPos > 480) || ((0<=randomHolePosition[27] && randomHolePosition[27]<=110) &  yPos > 480) || ((0<=randomHolePosition[28] && randomHolePosition[28]<=110) &  yPos > 480) || ((0<=randomHolePosition[29] && randomHolePosition[29]<=110) &  yPos > 480) || ((0<=randomHolePosition[30] && randomHolePosition[30]<=110) &  yPos > 480) || ((0<=randomHolePosition[31] && randomHolePosition[31]<=110) &  yPos > 480) || ((0<=randomHolePosition[32] && randomHolePosition[32]<=110) &  yPos > 480) || ((0<=randomHolePosition[33] && randomHolePosition[33]<=110) &  yPos > 480) || ((0<=randomHolePosition[34] && randomHolePosition[34]<=110) &  yPos > 480) || ((0<=randomHolePosition[35] && randomHolePosition[35]<=110) &  yPos > 480) || ((0<=randomHolePosition[36] && randomHolePosition[36]<=110) &  yPos > 480) || ((0<=randomHolePosition[37] && randomHolePosition[37]<=110) &  yPos > 480) || ((0<=randomHolePosition[38] && randomHolePosition[38]<=110) &  yPos > 480) || ((0<=randomHolePosition[39] && randomHolePosition[39]<=110) &  yPos > 480) || ((0<=randomHolePosition[40] && randomHolePosition[40]<=110) &  yPos > 480) || ((0<=randomHolePosition[41] && randomHolePosition[41]<=110) &  yPos > 480) || ((0<=randomHolePosition[42] && randomHolePosition[42]<=110) &  yPos > 480) || ((0<=randomHolePosition[43] && randomHolePosition[43]<=110) &  yPos > 480) || ((0<=randomHolePosition[44] && randomHolePosition[44]<=110) &  yPos > 480) || ((0<=randomHolePosition[45] && randomHolePosition[45]<=110) &  yPos > 480) || ((0<=randomHolePosition[46] && randomHolePosition[46]<=110) &  yPos > 480) || ((0<=randomHolePosition[47] && randomHolePosition[47]<=110) &  yPos > 480) || ((0<=randomHolePosition[48] && randomHolePosition[48]<=110) &  yPos > 480) || ((0<=randomHolePosition[49] && randomHolePosition[49]<=110) &  yPos > 480)) {       
    textSize(60);
    fill(127,0,0);
    text("GAME OVER!", 400, 400);
    textSize(32);
    fill(0,0,127);
    text("諦めないで！「S」を押してやり直す", 350, 440); 
    gameOver = true;
    
  }  
  else if (((0<=randomCloudPositionx[0]) && (randomCloudPositionx[0]<=90) && (randomCloudPositiony[0] >= yPos-7) && (randomCloudPositiony[0] <= yPos+7)) || ((0<=randomCloudPositionx[1]) && (randomCloudPositionx[1]<=90) && (randomCloudPositiony[1] >= yPos-7) && (randomCloudPositiony[1] <= yPos+7)) || ((0<=randomCloudPositionx[2]) && (randomCloudPositionx[2]<=90) && (randomCloudPositiony[2] >= yPos-7) && (randomCloudPositiony[2] <= yPos+7)) || ((0<=randomCloudPositionx[3]) && (randomCloudPositionx[3]<=90) && (randomCloudPositiony[3] >= yPos-7) && (randomCloudPositiony[3] <= yPos+7)) || ((0<=randomCloudPositionx[4]) && (randomCloudPositionx[4]<=90) && (randomCloudPositiony[4] >= yPos-7) && (randomCloudPositiony[4] <= yPos+7)) || ((0<=randomCloudPositionx[5]) && (randomCloudPositionx[5]<=90) && (randomCloudPositiony[5] >= yPos-7) && (randomCloudPositiony[5] <= yPos+7)) || ((0<=randomCloudPositionx[6]) && (randomCloudPositionx[6]<=90) && (randomCloudPositiony[6] >= yPos-7) && (randomCloudPositiony[6] <= yPos+7)) || ((0<=randomCloudPositionx[7]) && (randomCloudPositionx[7]<=90) && (randomCloudPositiony[7] >= yPos-7) && (randomCloudPositiony[7] <= yPos+7)) || ((0<=randomCloudPositionx[8]) && (randomCloudPositionx[8]<=90) && (randomCloudPositiony[8] >= yPos-7) && (randomCloudPositiony[8] <= yPos+7)) || ((0<=randomCloudPositionx[9]) && (randomCloudPositionx[9]<=90) && (randomCloudPositiony[9] >= yPos-7) && (randomCloudPositiony[9] <= yPos+7)) || ((0<=randomCloudPositionx[10]) && (randomCloudPositionx[10]<=90) && (randomCloudPositiony[10] >= yPos-7) && (randomCloudPositiony[10] <= yPos+7)) || ((0<=randomCloudPositionx[11]) && (randomCloudPositionx[11]<=90) && (randomCloudPositiony[11] >= yPos-7) && (randomCloudPositiony[11] <= yPos+7)) || ((0<=randomCloudPositionx[12]) && (randomCloudPositionx[12]<=90) && (randomCloudPositiony[12] >= yPos-7) && (randomCloudPositiony[12] <= yPos+7)) || ((0<=randomCloudPositionx[13]) && (randomCloudPositionx[13]<=90) && (randomCloudPositiony[13] >= yPos-7) && (randomCloudPositiony[13] <= yPos+7)) || ((0<=randomCloudPositionx[14]) && (randomCloudPositionx[14]<=90) && (randomCloudPositiony[14] >= yPos-7) && (randomCloudPositiony[14] <= yPos+7)) || ((0<=randomCloudPositionx[15]) && (randomCloudPositionx[15]<=90) && (randomCloudPositiony[15] >= yPos-7) && (randomCloudPositiony[15] <= yPos+7)) || ((0<=randomCloudPositionx[16]) && (randomCloudPositionx[16]<=90) && (randomCloudPositiony[16] >= yPos-7) && (randomCloudPositiony[16] <= yPos+7)) || ((0<=randomCloudPositionx[17]) && (randomCloudPositionx[17]<=90) && (randomCloudPositiony[17] >= yPos-7) && (randomCloudPositiony[17] <= yPos+7)) || ((0<=randomCloudPositionx[18]) && (randomCloudPositionx[18]<=90) && (randomCloudPositiony[18] >= yPos-7) && (randomCloudPositiony[18] <= yPos+7)) || ((0<=randomCloudPositionx[19]) && (randomCloudPositionx[19]<=90) && (randomCloudPositiony[19] >= yPos-7) && (randomCloudPositiony[19] <= yPos+7)) || ((0<=randomCloudPositionx[20]) && (randomCloudPositionx[20]<=90) && (randomCloudPositiony[20] >= yPos-7) && (randomCloudPositiony[20] <= yPos+7)) || ((0<=randomCloudPositionx[21]) && (randomCloudPositionx[21]<=90) && (randomCloudPositiony[21] >= yPos-7) && (randomCloudPositiony[21] <= yPos+7)) || ((0<=randomCloudPositionx[22]) && (randomCloudPositionx[22]<=90) && (randomCloudPositiony[22] >= yPos-7) && (randomCloudPositiony[22] <= yPos+7)) || ((0<=randomCloudPositionx[23]) && (randomCloudPositionx[23]<=90) && (randomCloudPositiony[23] >= yPos-7) && (randomCloudPositiony[23] <= yPos+7)) || ((0<=randomCloudPositionx[24]) && (randomCloudPositionx[24]<=90) && (randomCloudPositiony[24] >= yPos-7) && (randomCloudPositiony[24] <= yPos+7)) || ((0<=randomCloudPositionx[25]) && (randomCloudPositionx[25]<=90) && (randomCloudPositiony[25] >= yPos-7) && (randomCloudPositiony[25] <= yPos+7)) || ((0<=randomCloudPositionx[26]) && (randomCloudPositionx[26]<=90) && (randomCloudPositiony[26] >= yPos-7) && (randomCloudPositiony[26] <= yPos+7)) || ((0<=randomCloudPositionx[27]) && (randomCloudPositionx[27]<=90) && (randomCloudPositiony[27] >= yPos-7) && (randomCloudPositiony[27] <= yPos+7)) || ((0<=randomCloudPositionx[28]) && (randomCloudPositionx[28]<=90) && (randomCloudPositiony[28] >= yPos-7) && (randomCloudPositiony[28] <= yPos+7)) || ((0<=randomCloudPositionx[29]) && (randomCloudPositionx[29]<=90) && (randomCloudPositiony[29] >= yPos-7) && (randomCloudPositiony[29] <= yPos+7)) || ((0<=randomCloudPositionx[30]) && (randomCloudPositionx[30]<=90) && (randomCloudPositiony[30] >= yPos-7) && (randomCloudPositiony[30] <= yPos+7)) || ((0<=randomCloudPositionx[31]) && (randomCloudPositionx[31]<=90) && (randomCloudPositiony[31] >= yPos-7) && (randomCloudPositiony[31] <= yPos+7)) || ((0<=randomCloudPositionx[32]) && (randomCloudPositionx[32]<=90) && (randomCloudPositiony[32] >= yPos-7) && (randomCloudPositiony[32] <= yPos+7)) || ((0<=randomCloudPositionx[33]) && (randomCloudPositionx[33]<=90) && (randomCloudPositiony[33] >= yPos-7) && (randomCloudPositiony[33] <= yPos+7)) || ((0<=randomCloudPositionx[34]) && (randomCloudPositionx[34]<=90) && (randomCloudPositiony[34] >= yPos-7) && (randomCloudPositiony[34] <= yPos+7)) || ((0<=randomCloudPositionx[35]) && (randomCloudPositionx[35]<=90) && (randomCloudPositiony[35] >= yPos-7) && (randomCloudPositiony[35] <= yPos+7)) || ((0<=randomCloudPositionx[36]) && (randomCloudPositionx[36]<=90) && (randomCloudPositiony[36] >= yPos-7) && (randomCloudPositiony[36] <= yPos+7)) || ((0<=randomCloudPositionx[37]) && (randomCloudPositionx[37]<=90) && (randomCloudPositiony[37] >= yPos-7) && (randomCloudPositiony[37] <= yPos+7)) || ((0<=randomCloudPositionx[38]) && (randomCloudPositionx[38]<=90) && (randomCloudPositiony[38] >= yPos-7) && (randomCloudPositiony[38] <= yPos+7)) || ((0<=randomCloudPositionx[39]) && (randomCloudPositionx[39]<=90) && (randomCloudPositiony[39] >= yPos-7) && (randomCloudPositiony[39] <= yPos+7)) || ((0<=randomCloudPositionx[40]) && (randomCloudPositionx[40]<=90) && (randomCloudPositiony[40] >= yPos-7) && (randomCloudPositiony[40] <= yPos+7)) || ((0<=randomCloudPositionx[41]) && (randomCloudPositionx[41]<=90) && (randomCloudPositiony[41] >= yPos-7) && (randomCloudPositiony[41] <= yPos+7)) || ((0<=randomCloudPositionx[42]) && (randomCloudPositionx[42]<=90) && (randomCloudPositiony[42] >= yPos-7) && (randomCloudPositiony[42] <= yPos+7)) || ((0<=randomCloudPositionx[43]) && (randomCloudPositionx[43]<=90) && (randomCloudPositiony[43] >= yPos-7) && (randomCloudPositiony[43] <= yPos+7)) || ((0<=randomCloudPositionx[44]) && (randomCloudPositionx[44]<=90) && (randomCloudPositiony[44] >= yPos-7) && (randomCloudPositiony[44] <= yPos+7)) || ((0<=randomCloudPositionx[45]) && (randomCloudPositionx[45]<=90) && (randomCloudPositiony[45] >= yPos-7) && (randomCloudPositiony[45] <= yPos+7)) || ((0<=randomCloudPositionx[46]) && (randomCloudPositionx[46]<=90) && (randomCloudPositiony[46] >= yPos-7) && (randomCloudPositiony[46] <= yPos+7)) || ((0<=randomCloudPositionx[47]) && (randomCloudPositionx[47]<=90) && (randomCloudPositiony[47] >= yPos-7) && (randomCloudPositiony[47] <= yPos+7)) || ((0<=randomCloudPositionx[48]) && (randomCloudPositionx[48]<=90) && (randomCloudPositiony[48] >= yPos-7) && (randomCloudPositiony[48] <= yPos+7)) || ((0<=randomCloudPositionx[49]) && (randomCloudPositionx[49]<=90) && (randomCloudPositiony[49] >= yPos-7) && (randomCloudPositiony[49] <= yPos+7))) {
    textSize(60);
    fill(127,0,0);
    text("GAME OVER!", 400, 400);
    textSize(32);
    fill(0,0,127);
    text("諦めないで！「S」を押してやり直す", 350, 440); 
    gameOver = true;
  }
}
 
//入力
void keyPressed() {
  if (key == CODED) {
     if(keyCode == UP) {
       myMario.moveUp = true;
     }     
  }
  if(gameOver == true && key == 's')  {   
    gameOver = false;
    initialization();
  }
}
 
void keyReleased() {
  if (key == CODED) {
     if(keyCode == UP) {
       myMario.moveUp = false;
       myMario.moveDown = true;
     }
  }
}


//プレイヤー・クラス
class Mario {
  float speed = 2;
  boolean moveLeft, moveRight, moveUp, moveDown = false;
 
  Mario(float x_in, float y_in) {
    xPos = x_in;
    yPos = y_in; 
  }
 
  void display() {
    fill(255);
    noStroke();
    image(marioimage, xPos, yPos);    
  }
  
  void move() {    
    if(moveUp) yPos -= speed*3;
    if(moveDown) yPos += speed*2;
    if (yPos >= 530) {
      moveDown = false;
    }  
   }
}

import gab.opencv.*;
import processing.video.*;
import java.awt.*;

public class HandMovementDetector extends PApplet {

  Capture video;
  OpenCV opencv;
  
  boolean handDetectionPositive = false;  

  public void settings() {
    size(640, 480);
  }

  void setup() {     
    video = new Capture(this, 640/2, 480/2);
    opencv = new OpenCV(this, 640/2, 480/2);
    opencv.loadCascade("fist.xml");
    currentTime = 0;
    startTime = millis();
    video.start();
  }

  void draw() {
    isHandMovementDetectorWindowCreated = true;    
    surface.setLocation(0,50);
    scale(2);
    opencv.loadImage(video);
  
    image(video, 0, 0 );
  
    noFill();
    stroke(0, 255, 0);
    strokeWeight(3);
    Rectangle[] faces = opencv.detect();
    
    if(faces.length == 0) {
      handDetectionPositive=false;
    }
    
    for (int i = 0; i < faces.length; i++) {
      rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
      
      if(faces[i].x>0 && (faces[i].x+faces[i].width)<=320 && faces[i].y+faces[i].height<=50) {               
        if (yPos >= -10) {
          myMario.moveUp = true;        
          handDetectionPositive=true;
        }
      }    
      else if(faces[i].x>0 && (faces[i].x+faces[i].width)<=320 && faces[i].y<=50) {        
        if (yPos >= -10) {
          myMario.moveUp = true;        
          handDetectionPositive=true;
        }
      }    
      else {       
        handDetectionPositive=false;
      }
    }
    
    if (handDetectionPositive == false){
       if (yPos <= 530) {
           myMario.moveUp = false;
           myMario.moveDown = true;           
       }
    }             
    line(0, 50, 320, 50);
  }

  void captureEvent(Capture c) {
    c.read();
  }
}
