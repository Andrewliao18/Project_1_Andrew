
void setup() {
  size(900, 750);
}

void draw() {
  background(164, 119, 83);
  sun(mouseX, mouseY);
  //moon();
  daynight();
  mountain();
  path();
}

void mountain() {
  fill(0);
  strokeWeight(3);
  beginShape();
  vertex(20, 750);//1
  vertex(120, 600);//2
  vertex(140, 600);//3
  vertex(240, 450);//4
  vertex(260, 450);//5
  vertex(360, 300);//6
  vertex(380, 300);//7
  vertex(480, 150);//8
  vertex(550, 150);//9
  vertex(650, 300);//10
  vertex(670, 300);//11
  vertex(770, 450);//12
  vertex(790, 450);//13
  vertex(900, 600);//14
  vertex(900, 750);//15
  vertex(0, 750);//16
  endShape();
}

void path() {
  strokeWeight(30);
  stroke(164, 119, 83, 180);
  //first path
  curve(400, 400, 68, 700, 885, 600, 700, 500);
  //second path
  curve(450, 300, 188, 550, 885, 600, 600, 400);
  //third path
  curve(450, 300, 188, 550, 720, 400, 600, 400);
  //fourth path
  curve(350, 500, 338, 350, 720, 400, 600, 400);
  //fifth path
  curve(250, 100, 338, 350, 570, 230, 300, 400);
  //sixth path
  curve(100, -500, 500, 162, 570, 230, 300, 400);
}

void rock() {
}

void human() {
}

void daynight() {
}

void sun(int x, int y) {
  fill(249, 215, 28, 200);
  int sunX = 0;
  int sunY = 200;
  int XLoc = x;
  int YLoc = y;
  if (sunX<450) {
    sunX = sunX + XLoc;
    sunY = sunY - YLoc;
    ellipse(sunX, sunY, 500, 500);
  } else if (sunX>450) {
    sunX = sunX + XLoc;
    sunY = sunY + YLoc;
    ellipse(sunX, sunY, 500, 500);
  } else if (sunX>900) {
    sunX = 0;
    sunY = 200;
  }
}

void moon() {
  int moonX = mouseX;
  int moonY = mouseY;
  fill(58, 58, 58);
  ellipse(moonX, moonY, 500, 500);//big moon
  //holes within
  fill(50, 50, 58, 200);
  strokeWeight(3);
  stroke(50, 50, 58, 200);
  ellipse(moonX+random(-125, 125), moonY+random(-125, 125), random(30, 60), random(30, 60) );
  ellipse(moonX+random(-125, 125), moonY+random(-125, 125), random(30, 60), random(30, 60) );
  ellipse(moonX+random(-125, 125), moonY+random(-125, 125), random(30, 60), random(30, 60) );
  ellipse(moonX+random(-125, 125), moonY+random(-125, 125), random(30, 60), random(30, 60) );
}
