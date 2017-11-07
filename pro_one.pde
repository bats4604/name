String s;
int like;
int dislike;
PFont f;

void setup() {
  size(500,500);
  //fullScreen();
  background(100);
  noStroke();
  f = createFont("Arial",16,true); // Arial, 16 point, anti-aliasing on
  
}


void draw() {
  rect(0,0,600,50);
  textAlign(CENTER);
  fill(0);
  //print(s,width/2,25);
  fill(327);
  if (like ==0 && dislike ==0){
  s = "left to dislike and right to like";
}
  if (like == 1){
 s = "Like";
  }
if (dislike == 1){
 s = "Dislike";
  }

}

//like is right
void keyPressed() {
  if (keyCode == LEFT) {
      key = LEFT;
      like= 0;
      dislike = 1;
      println(like,dislike);
      rect(0,0,600,50);
    fill(127,0,0);
    rect(250,250,50,50);
    println(s);
  }
//dilike is left
  if (keyCode == RIGHT) {
      key = RIGHT;
      dislike= 0;
      like= 1;
      println(like,dislike);
    fill(0,127,0);
    rect(250,250,50,50);
    
println(s);
}
}