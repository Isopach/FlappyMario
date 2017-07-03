
PImage marioimage;
PImage mariorun;
PImage mariorun2;
 
Mario myMario;
PImage backgroundImg, hole, cloud;
int[] randomHolePosition = new int[50]; // 50 holes

int[] randomCloudPositionx = new int[50]; // 50 clouds, x positions
int[] randomCloudPositiony = new int[50]; // 50 clouds, y positions

float xPos; // x position of Mario character
float yPos; // y position of Mario character

boolean gameOver = false; 

void setup() {
  
  size(1200, 800);
  smooth();
  noStroke();
  
  marioimage = loadImage("Wing_Mario.png");
  marioimage.resize(80,80);
  
  mariorun = loadImage("mariorun.png");
  
  mariorun2 = loadImage("mariorun2.png");
  
  myMario = new Mario(50,530);
  
  backgroundImg = loadImage("game-background.jpg");
  
  hole = loadImage("hole.png");
  
  cloud = loadImage("cloud.jpg");
  
  // creating random 50 holes
  randomHolePosition[0] = 250; 
  for(int i=1; i<50; i++) {    
    randomHolePosition[i] = randomHolePosition[i-1]+int(random(150,800));
  }  
  randomHolePosition = sort (randomHolePosition);    
     
  // creating random 50 clouds
  randomCloudPositiony[0] = 25;
  randomCloudPositionx[0] = 250;  
  for(int i=1; i<50; i++) {       
    randomCloudPositionx[i] = randomCloudPositionx[i-1]+int(random(150,800));
    randomCloudPositiony[i] = randomCloudPositiony[i-1]+int(random(20,60));
  }
  randomCloudPositionx = sort (randomCloudPositionx);
    
}

void initialization() {
  // creating random 50 holes
  randomHolePosition[0] = 250; 
  for(int i=1; i<50; i++) {    
    randomHolePosition[i] = randomHolePosition[i-1]+int(random(150,800));
  }  
  randomHolePosition = sort (randomHolePosition);    
     
  // creating random 50 clouds
  randomCloudPositiony[0] = 25;
  randomCloudPositionx[0] = 250;  
  for(int i=1; i<50; i++) {       
    randomCloudPositionx[i] = randomCloudPositionx[i-1]+int(random(150,800));
    randomCloudPositiony[i] = randomCloudPositiony[i-1]+int(random(20,60));
  }
  randomCloudPositionx = sort (randomCloudPositionx);
}
 
void draw() {  
  
  if (gameOver == false) {
    background(backgroundImg);
    
    // configurating the positions of holes
    randomHolePosition[0] = randomHolePosition[0]-1;
    randomHolePosition[1] = randomHolePosition[1]-1;
    randomHolePosition[2] = randomHolePosition[2]-1;
    randomHolePosition[3] = randomHolePosition[3]-1;
    randomHolePosition[4] = randomHolePosition[4]-1;
    randomHolePosition[5] = randomHolePosition[5]-1; 
    randomHolePosition[6] = randomHolePosition[6]-1;
    randomHolePosition[7] = randomHolePosition[7]-1;
    randomHolePosition[8] = randomHolePosition[8]-1;
    randomHolePosition[9] = randomHolePosition[9]-1;
    randomHolePosition[10] = randomHolePosition[10]-1;
    randomHolePosition[11] = randomHolePosition[11]-1;  
    randomHolePosition[12] = randomHolePosition[12]-1;
    randomHolePosition[13] = randomHolePosition[13]-1;
    randomHolePosition[14] = randomHolePosition[14]-1;
    randomHolePosition[15] = randomHolePosition[15]-1;
    randomHolePosition[16] = randomHolePosition[16]-1;
    randomHolePosition[17] = randomHolePosition[17]-1;  
    randomHolePosition[18] = randomHolePosition[18]-1;
    randomHolePosition[19] = randomHolePosition[19]-1;
    randomHolePosition[20] = randomHolePosition[20]-1;
    randomHolePosition[21] = randomHolePosition[21]-1;
    randomHolePosition[22] = randomHolePosition[22]-1;
    randomHolePosition[23] = randomHolePosition[23]-1;
    randomHolePosition[24] = randomHolePosition[24]-1;
    randomHolePosition[25] = randomHolePosition[25]-1;
    randomHolePosition[26] = randomHolePosition[26]-1;
    randomHolePosition[27] = randomHolePosition[27]-1;
    randomHolePosition[28] = randomHolePosition[28]-1;
    randomHolePosition[29] = randomHolePosition[29]-1;  
    randomHolePosition[30] = randomHolePosition[30]-1;
    randomHolePosition[31] = randomHolePosition[31]-1;
    randomHolePosition[32] = randomHolePosition[32]-1;
    randomHolePosition[33] = randomHolePosition[33]-1;
    randomHolePosition[34] = randomHolePosition[34]-1;
    randomHolePosition[35] = randomHolePosition[35]-1;  
    randomHolePosition[36] = randomHolePosition[36]-1;
    randomHolePosition[37] = randomHolePosition[37]-1;
    randomHolePosition[38] = randomHolePosition[38]-1;
    randomHolePosition[39] = randomHolePosition[39]-1;
    randomHolePosition[40] = randomHolePosition[40]-1;
    randomHolePosition[41] = randomHolePosition[41]-1;  
    randomHolePosition[42] = randomHolePosition[42]-1;
    randomHolePosition[43] = randomHolePosition[43]-1;
    randomHolePosition[44] = randomHolePosition[44]-1;
    randomHolePosition[45] = randomHolePosition[45]-1;
    randomHolePosition[46] = randomHolePosition[46]-1;
    randomHolePosition[47] = randomHolePosition[47]-1;  
    randomHolePosition[48] = randomHolePosition[48]-1;
    randomHolePosition[49] = randomHolePosition[49]-1;  
    
    // drawing the holes with updated positions
    image(hole, randomHolePosition[0], 530,101, 92); 
    image(hole, randomHolePosition[1], 530,101, 92); 
    image(hole, randomHolePosition[2], 530,101, 92); 
    image(hole, randomHolePosition[3], 530,101, 92); 
    image(hole, randomHolePosition[4], 530,101, 92);
    image(hole, randomHolePosition[5], 530,101, 92);   
    image(hole, randomHolePosition[6], 530,101, 92); 
    image(hole, randomHolePosition[7], 530,101, 92); 
    image(hole, randomHolePosition[8], 530,101, 92); 
    image(hole, randomHolePosition[9], 530,101, 92);
    image(hole, randomHolePosition[10], 530,101, 92);  
    image(hole, randomHolePosition[11], 530,101, 92); 
    image(hole, randomHolePosition[12], 530,101, 92); 
    image(hole, randomHolePosition[13], 530,101, 92); 
    image(hole, randomHolePosition[14], 530,101, 92);
    image(hole, randomHolePosition[15], 530,101, 92);  
    image(hole, randomHolePosition[16], 530,101, 92); 
    image(hole, randomHolePosition[17], 530,101, 92); 
    image(hole, randomHolePosition[18], 530,101, 92); 
    image(hole, randomHolePosition[19], 530,101, 92);
    image(hole, randomHolePosition[20], 530,101, 92);  
    image(hole, randomHolePosition[21], 530,101, 92); 
    image(hole, randomHolePosition[22], 530,101, 92); 
    image(hole, randomHolePosition[23], 530,101, 92); 
    image(hole, randomHolePosition[24], 530,101, 92);
    image(hole, randomHolePosition[25], 530,101, 92);  
    image(hole, randomHolePosition[26], 530,101, 92); 
    image(hole, randomHolePosition[27], 530,101, 92); 
    image(hole, randomHolePosition[28], 530,101, 92); 
    image(hole, randomHolePosition[29], 530,101, 92);
    image(hole, randomHolePosition[30], 530,101, 92);  
    image(hole, randomHolePosition[31], 530,101, 92); 
    image(hole, randomHolePosition[32], 530,101, 92); 
    image(hole, randomHolePosition[33], 530,101, 92); 
    image(hole, randomHolePosition[34], 530,101, 92);
    image(hole, randomHolePosition[35], 530,101, 92);  
    image(hole, randomHolePosition[36], 530,101, 92); 
    image(hole, randomHolePosition[37], 530,101, 92); 
    image(hole, randomHolePosition[38], 530,101, 92); 
    image(hole, randomHolePosition[39], 530,101, 92);
    image(hole, randomHolePosition[40], 530,101, 92);  
    image(hole, randomHolePosition[41], 530,101, 92); 
    image(hole, randomHolePosition[42], 530,101, 92); 
    image(hole, randomHolePosition[43], 530,101, 92); 
    image(hole, randomHolePosition[44], 530,101, 92);
    image(hole, randomHolePosition[45], 530,101, 92);  
    image(hole, randomHolePosition[46], 530,101, 92); 
    image(hole, randomHolePosition[47], 530,101, 92); 
    image(hole, randomHolePosition[48], 530,101, 92); 
    image(hole, randomHolePosition[49], 530,101, 92);
        
    // configurating the positions of clouds
    randomCloudPositionx[0] = randomCloudPositionx[0]-1;
    randomCloudPositionx[1] = randomCloudPositionx[1]-1;
    randomCloudPositionx[2] = randomCloudPositionx[2]-1;
    randomCloudPositionx[3] = randomCloudPositionx[3]-1;
    randomCloudPositionx[4] = randomCloudPositionx[4]-1;
    randomCloudPositionx[5] = randomCloudPositionx[5]-1; 
    randomCloudPositionx[6] = randomCloudPositionx[6]-1;
    randomCloudPositionx[7] = randomCloudPositionx[7]-1;
    randomCloudPositionx[8] = randomCloudPositionx[8]-1;
    randomCloudPositionx[9] = randomCloudPositionx[9]-1;
    randomCloudPositionx[10] = randomCloudPositionx[10]-1;
    randomCloudPositionx[11] = randomCloudPositionx[11]-1; 
    randomCloudPositionx[12] = randomCloudPositionx[12]-1;
    randomCloudPositionx[13] = randomCloudPositionx[13]-1;
    randomCloudPositionx[14] = randomCloudPositionx[14]-1;
    randomCloudPositionx[15] = randomCloudPositionx[15]-1;
    randomCloudPositionx[16] = randomCloudPositionx[16]-1;
    randomCloudPositionx[17] = randomCloudPositionx[17]-1;  
    randomCloudPositionx[18] = randomCloudPositionx[18]-1;
    randomCloudPositionx[19] = randomCloudPositionx[19]-1;
    randomCloudPositionx[20] = randomCloudPositionx[20]-1;
    randomCloudPositionx[21] = randomCloudPositionx[21]-1;
    randomCloudPositionx[22] = randomCloudPositionx[22]-1;
    randomCloudPositionx[23] = randomCloudPositionx[23]-1;  
    randomCloudPositionx[24] = randomCloudPositionx[24]-1;
    randomCloudPositionx[25] = randomCloudPositionx[25]-1;
    randomCloudPositionx[26] = randomCloudPositionx[26]-1;
    randomCloudPositionx[27] = randomCloudPositionx[27]-1;
    randomCloudPositionx[28] = randomCloudPositionx[28]-1;
    randomCloudPositionx[29] = randomCloudPositionx[29]-1;  
    randomCloudPositionx[30] = randomCloudPositionx[30]-1;
    randomCloudPositionx[31] = randomCloudPositionx[31]-1;
    randomCloudPositionx[32] = randomCloudPositionx[32]-1;
    randomCloudPositionx[33] = randomCloudPositionx[33]-1;
    randomCloudPositionx[34] = randomCloudPositionx[34]-1;
    randomCloudPositionx[35] = randomCloudPositionx[35]-1;  
    randomCloudPositionx[36] = randomCloudPositionx[36]-1;
    randomCloudPositionx[37] = randomCloudPositionx[37]-1;
    randomCloudPositionx[38] = randomCloudPositionx[38]-1;
    randomCloudPositionx[39] = randomCloudPositionx[39]-1;
    randomCloudPositionx[40] = randomCloudPositionx[40]-1;
    randomCloudPositionx[41] = randomCloudPositionx[41]-1;  
    randomCloudPositionx[42] = randomCloudPositionx[42]-1;
    randomCloudPositionx[43] = randomCloudPositionx[43]-1;
    randomCloudPositionx[44] = randomCloudPositionx[44]-1;
    randomCloudPositionx[45] = randomCloudPositionx[45]-1;
    randomCloudPositionx[46] = randomCloudPositionx[46]-1;
    randomCloudPositionx[47] = randomCloudPositionx[47]-1;  
    randomCloudPositionx[48] = randomCloudPositionx[48]-1;
    randomCloudPositionx[49] = randomCloudPositionx[49]-1;
    
    // drawing the clouds with updated positions
    image(cloud, randomCloudPositionx[0], randomCloudPositiony[0],101, 92); 
    image(cloud, randomCloudPositionx[1], randomCloudPositiony[1],101, 92); 
    image(cloud, randomCloudPositionx[2], randomCloudPositiony[2],101, 92); 
    image(cloud, randomCloudPositionx[3], randomCloudPositiony[3],101, 92); 
    image(cloud, randomCloudPositionx[4], randomCloudPositiony[4],101, 92);
    image(cloud, randomCloudPositionx[5], randomCloudPositiony[5],101, 92);   
    image(cloud, randomCloudPositionx[6], randomCloudPositiony[1],101, 92); 
    image(cloud, randomCloudPositionx[7], randomCloudPositiony[2],101, 92); 
    image(cloud, randomCloudPositionx[8], randomCloudPositiony[3],101, 92); 
    image(cloud, randomCloudPositionx[9], randomCloudPositiony[4],101, 92);
    image(cloud, randomCloudPositionx[10], randomCloudPositiony[5],101, 92);   
    image(cloud, randomCloudPositionx[11], randomCloudPositiony[1],101, 92); 
    image(cloud, randomCloudPositionx[12], randomCloudPositiony[2],101, 92); 
    image(cloud, randomCloudPositionx[13], randomCloudPositiony[3],101, 92); 
    image(cloud, randomCloudPositionx[14], randomCloudPositiony[4],101, 92);
    image(cloud, randomCloudPositionx[15], randomCloudPositiony[5],101, 92);   
    image(cloud, randomCloudPositionx[16], randomCloudPositiony[1],101, 92); 
    image(cloud, randomCloudPositionx[17], randomCloudPositiony[2],101, 92); 
    image(cloud, randomCloudPositionx[18], randomCloudPositiony[3],101, 92); 
    image(cloud, randomCloudPositionx[19], randomCloudPositiony[4],101, 92);
    image(cloud, randomCloudPositionx[20], randomCloudPositiony[5],101, 92);   
    image(cloud, randomCloudPositionx[21], randomCloudPositiony[1],101, 92); 
    image(cloud, randomCloudPositionx[22], randomCloudPositiony[2],101, 92); 
    image(cloud, randomCloudPositionx[23], randomCloudPositiony[3],101, 92); 
    image(cloud, randomCloudPositionx[24], randomCloudPositiony[4],101, 92);
    image(cloud, randomCloudPositionx[25], randomCloudPositiony[5],101, 92);   
    image(cloud, randomCloudPositionx[26], randomCloudPositiony[1],101, 92); 
    image(cloud, randomCloudPositionx[27], randomCloudPositiony[2],101, 92); 
    image(cloud, randomCloudPositionx[28], randomCloudPositiony[3],101, 92); 
    image(cloud, randomCloudPositionx[29], randomCloudPositiony[4],101, 92);
    image(cloud, randomCloudPositionx[30], randomCloudPositiony[5],101, 92);   
    image(cloud, randomCloudPositionx[31], randomCloudPositiony[1],101, 92); 
    image(cloud, randomCloudPositionx[32], randomCloudPositiony[2],101, 92); 
    image(cloud, randomCloudPositionx[33], randomCloudPositiony[3],101, 92); 
    image(cloud, randomCloudPositionx[34], randomCloudPositiony[4],101, 92);
    image(cloud, randomCloudPositionx[35], randomCloudPositiony[5],101, 92);   
    image(cloud, randomCloudPositionx[36], randomCloudPositiony[1],101, 92); 
    image(cloud, randomCloudPositionx[37], randomCloudPositiony[2],101, 92); 
    image(cloud, randomCloudPositionx[38], randomCloudPositiony[3],101, 92); 
    image(cloud, randomCloudPositionx[39], randomCloudPositiony[4],101, 92);
    image(cloud, randomCloudPositionx[40], randomCloudPositiony[5],101, 92);   
    image(cloud, randomCloudPositionx[41], randomCloudPositiony[1],101, 92); 
    image(cloud, randomCloudPositionx[42], randomCloudPositiony[2],101, 92); 
    image(cloud, randomCloudPositionx[43], randomCloudPositiony[3],101, 92); 
    image(cloud, randomCloudPositionx[44], randomCloudPositiony[4],101, 92);
    image(cloud, randomCloudPositionx[45], randomCloudPositiony[5],101, 92);   
    image(cloud, randomCloudPositionx[46], randomCloudPositiony[1],101, 92); 
    image(cloud, randomCloudPositionx[47], randomCloudPositiony[2],101, 92); 
    image(cloud, randomCloudPositionx[48], randomCloudPositiony[3],101, 92); 
    image(cloud, randomCloudPositionx[49], randomCloudPositiony[4],101, 92); 
      
    myMario.move();
    myMario.display(); 
    checkGameOver();  
  }
  
}

void checkGameOver() {
  if (((0<=randomHolePosition[0] && randomHolePosition[0]<=110) &  yPos > 480) || ((0<=randomHolePosition[1] && randomHolePosition[1]<=110) &  yPos > 480) || ((0<=randomHolePosition[2] && randomHolePosition[2]<=110) &  yPos > 480) || ((0<=randomHolePosition[3] && randomHolePosition[3]<=110) &  yPos > 480) || ((0<=randomHolePosition[4] && randomHolePosition[4]<=110) &  yPos > 480) || ((0<=randomHolePosition[5] && randomHolePosition[5]<=110) &  yPos > 480) || ((0<=randomHolePosition[6] && randomHolePosition[6]<=110) &  yPos > 480) || ((0<=randomHolePosition[7] && randomHolePosition[7]<=110) &  yPos > 480) || ((0<=randomHolePosition[8] && randomHolePosition[8]<=110) &  yPos > 480) || ((0<=randomHolePosition[9] && randomHolePosition[9]<=110) &  yPos > 480) || ((0<=randomHolePosition[10] && randomHolePosition[10]<=110) &  yPos > 480) || ((0<=randomHolePosition[11] && randomHolePosition[11]<=110) &  yPos > 480) || ((0<=randomHolePosition[12] && randomHolePosition[12]<=110) &  yPos > 480) || ((0<=randomHolePosition[13] && randomHolePosition[13]<=110) &  yPos > 480) || ((0<=randomHolePosition[14] && randomHolePosition[14]<=110) &  yPos > 480) || ((0<=randomHolePosition[15] && randomHolePosition[15]<=110) &  yPos > 480) || ((0<=randomHolePosition[16] && randomHolePosition[16]<=110) &  yPos > 480) || ((0<=randomHolePosition[17] && randomHolePosition[17]<=110) &  yPos > 480) || ((0<=randomHolePosition[18] && randomHolePosition[18]<=110) &  yPos > 480) || ((0<=randomHolePosition[19] && randomHolePosition[19]<=110) &  yPos > 480) || ((0<=randomHolePosition[20] && randomHolePosition[20]<=110) &  yPos > 480) || ((0<=randomHolePosition[21] && randomHolePosition[21]<=110) &  yPos > 480) || ((0<=randomHolePosition[22] && randomHolePosition[22]<=110) &  yPos > 480) || ((0<=randomHolePosition[23] && randomHolePosition[23]<=110) &  yPos > 480) || ((0<=randomHolePosition[24] && randomHolePosition[24]<=110) &  yPos > 480) || ((0<=randomHolePosition[25] && randomHolePosition[25]<=110) &  yPos > 480) || ((0<=randomHolePosition[26] && randomHolePosition[26]<=110) &  yPos > 480) || ((0<=randomHolePosition[27] && randomHolePosition[27]<=110) &  yPos > 480) || ((0<=randomHolePosition[28] && randomHolePosition[28]<=110) &  yPos > 480) || ((0<=randomHolePosition[29] && randomHolePosition[29]<=110) &  yPos > 480) || ((0<=randomHolePosition[30] && randomHolePosition[30]<=110) &  yPos > 480) || ((0<=randomHolePosition[31] && randomHolePosition[31]<=110) &  yPos > 480) || ((0<=randomHolePosition[32] && randomHolePosition[32]<=110) &  yPos > 480) || ((0<=randomHolePosition[33] && randomHolePosition[33]<=110) &  yPos > 480) || ((0<=randomHolePosition[34] && randomHolePosition[34]<=110) &  yPos > 480) || ((0<=randomHolePosition[35] && randomHolePosition[35]<=110) &  yPos > 480) || ((0<=randomHolePosition[36] && randomHolePosition[36]<=110) &  yPos > 480) || ((0<=randomHolePosition[37] && randomHolePosition[37]<=110) &  yPos > 480) || ((0<=randomHolePosition[38] && randomHolePosition[38]<=110) &  yPos > 480) || ((0<=randomHolePosition[39] && randomHolePosition[39]<=110) &  yPos > 480) || ((0<=randomHolePosition[40] && randomHolePosition[40]<=110) &  yPos > 480) || ((0<=randomHolePosition[41] && randomHolePosition[41]<=110) &  yPos > 480) || ((0<=randomHolePosition[42] && randomHolePosition[42]<=110) &  yPos > 480) || ((0<=randomHolePosition[43] && randomHolePosition[43]<=110) &  yPos > 480) || ((0<=randomHolePosition[44] && randomHolePosition[44]<=110) &  yPos > 480) || ((0<=randomHolePosition[45] && randomHolePosition[45]<=110) &  yPos > 480) || ((0<=randomHolePosition[46] && randomHolePosition[46]<=110) &  yPos > 480) || ((0<=randomHolePosition[47] && randomHolePosition[47]<=110) &  yPos > 480) || ((0<=randomHolePosition[48] && randomHolePosition[48]<=110) &  yPos > 480) || ((0<=randomHolePosition[49] && randomHolePosition[49]<=110) &  yPos > 480)) {       
    textSize(60);
    fill(127,0,0);
    text("GAME OVER!", 400, 400);
    textSize(32);
    fill(0,0,127);
    text("please press 's' to start again", 350, 440); 
    gameOver = true;
  }  
}
 
//KEYBOARD INPUT
void keyPressed() {
  if (key == CODED) {
     /*if (keyCode == LEFT) {
       myMario.moveLeft = true;
       marioimage.resize(80,65);
 
     } else if(keyCode == RIGHT) {
       myMario.moveRight = true;
       marioimage.resize(80,65);
 
     } else */if(keyCode == UP) {
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
     /*if (keyCode == LEFT) {
       myMario.moveLeft = false;
     } else if(keyCode == RIGHT) {
       myMario.moveRight = false;
     } else */if(keyCode == UP) {
       myMario.moveUp = false;
       myMario.moveDown = true;
     }
  }
}
 
//PLAYER CLASS
class Mario {
  /*float xPos;
  float yPos;*/
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
    //marioimage.resize(50,60);
  }
  
  void move() {
    //if(moveLeft) xPos -= speed;
    //if(moveRight) xPos += speed;
    if(moveUp) yPos -= speed*3;
    if(moveDown) yPos += speed*2;
    if (yPos >= 530) {
      moveDown = false;
    }  
   }
}
