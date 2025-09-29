// use the existing Ball.pde file 

Ball[] ballArray;
ArrayList<Ball> ballArrayList;

int numberOfBallObjects = 30;
//Ball b1, b2, b3;

int whichBallToReplace = 1;
int score = 0;

void setup() {
  size(900,900);
  ellipseMode(RADIUS);
  createNewBalls();  
}

void createNewBalls() {
  ballArrayList = new ArrayList<Ball>();
  for( int i = 0; i < numberOfBallObjects; i++ ) {
    ballArrayList.add( new Ball() );
  }
  //ballArray = new Ball[numberOfBallObjects];
  //for( int i = 0; i < ballArray.length; i++ ) {
  //  ballArray[i] = new Ball();
  //}
  //ballArray[0] = new Ball();
  //ballArray[1] = new Ball();
  //ballArray[2] = new Ball();
  
  // new calls the constructor
  //b1 = new Ball();
  //b2 = new Ball();
  //b3 = new Ball();
}

void draw() {
  background(100);
  fill(0);
  text(whichBallToReplace, 10, 10);
  text(score, 10, 25);
  
  for( Ball b : ballArrayList ) {
    b.update();
  }
  //ballArray[0].update();
  //ballArray[1].update();
  //ballArray[2].update(); 
  
  for( int i = 0; i < ballArrayList.size() - 1; i++ ) {
    for( int j = i + 1; j < ballArrayList.size(); j++ ) {
      ballArrayList.get(i).makeEmBounce(ballArrayList.get(j));
    }
  }
  //ballArray[0].makeEmBounce(ballArray[1]);
  //ballArray[0].makeEmBounce(ballArray[2]);
  //ballArray[1].makeEmBounce(ballArray[2]);
}

void mousePressed() {
  ballArrayList.add( new Ball(mouseX,mouseY) );
}

void rotateReplace() {
  ballArrayList.set(whichBallToReplace%3, new Ball(mouseX, mouseY));
  whichBallToReplace++;
  //if( whichBallToReplace % 3 == 0 ) {
  //  ballArray[0] = new Ball(mouseX,mouseY);
  //  whichBallToReplace++; //whichBallToReplace += 1; //whichBallToReplace = whichBallToReplace + 1;
  //} else if( whichBallToReplace % 3 == 1 ) {
  //  ballArray[1] = new Ball(mouseX, mouseY);
  //  whichBallToReplace++;
  //} else if( whichBallToReplace % 3 == 2 ) {
  //  ballArray[2] = new Ball(mouseX, mouseY);
  //  whichBallToReplace++;
  //} 
}

void keyPressed() {
  if( key == ' ' ) {
    createNewBalls();
  }
  
  if( key == 'r' ) {
    rotateReplace();
  }
}
