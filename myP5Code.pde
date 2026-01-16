//🟢Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(600, 400); 
}

//🎯Variable Declarations Go Here
var fishballSize = 200;
var bowlX = 136;
var bowlY = 295;
var fishX = bowlX;
var fishY = bowlY + 25;
var fishSpeed = 2;



//🟢Draw Procedure - Runs on Repeat
draw = function(){
  
 
  background(255,255,255,0);
  


  //fishball
  fill(197,246,250)
arc(136, 295, fishballSize, fishballSize, radians(0), radians(180));
fill(0,0,0,0)
arc(136, 295, fishballSize, fishballSize, radians(180), radians(360));

// animate fish (left-right)
fishX += fishSpeed;

// bounce inside bowl
if (fishX > bowlX + 30) { fishSpeed = -fishSpeed; }
if (fishX < bowlX - 30) { fishSpeed = -fishSpeed; }

// keep fish in lower half of bowl
if (fishY < bowlY) { fishY = bowlY; }

//fish
pushMatrix();
pushStyle();

// 
translate(fishX, fishY);

// 
noStroke();

// body
fill(60, 200, 120);
ellipse(0, 0, 32, 18);

// tail
fill(50, 170, 100);
triangle(-16, 0, -32, -10, -32, 10);

//
fill(70, 210, 140);
triangle(-2, 2, 8, 10, 12, 2);

// eye
fill(0, 0, 0);
ellipse(10, -3, 3, 3);

popStyle();
popMatrix();

// 
stroke(0,0,0);
strokeWeight(1);
noFill();




  //Show x y values when mousepressed
  if(mousePressed){showXYPositions();}

}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255,200)
    rect(470,320,150,100,10)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 490, 360)
    fill(255, 255, 255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
