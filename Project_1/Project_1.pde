
int r = 0;
ArrayList<Integer> x = new ArrayList<Integer>();
ArrayList<Integer> y = new ArrayList<Integer>();
ArrayList<Integer> z = new ArrayList<Integer>(); //moon hole x variable
ArrayList<Integer> w = new ArrayList<Integer>(); //moon hole y variable
ArrayList<Integer> a = new ArrayList<Integer>(); //moon hole x size
ArrayList<Integer> b = new ArrayList<Integer>(); //moon hole y size
int time = 0;

void setup() {
  size(1100, 750);
  for (int i = 0; i < 20; i ++) {
    x.add(int(random(0, 1100)));
    y.add(int(random(0, 750)));
  }
  for (int j = 0; j<6; j++) {
    z.add(int(random(-125, 125)));
    w.add(int(random(-125, 125)));
    a.add(int(random(30, 60)));
    b.add(int(random(30, 60)));
  }
}

void draw() {
  background(164, 119, 83);
  sunandmoon();
  mountain();
  path();
  boulder(100, 650);
  boulderroll();
  sisyphus(75, 680);
}

void mountain() {
  fill(60, 60, 60);
  stroke(60, 60, 60);
  strokeWeight(10);
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
  vertex(920, 600);//15
  vertex(1020, 750);//16
  vertex(900, 750);//17
  vertex(0, 750);//18
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

void boulder(int x, int y) {
  noStroke();
  fill(35, 35, 35);
  // x = 100, y = 650
  beginShape();
  vertex(x, y);
  vertex(x+40, y);
  vertex(x+60, y+20);
  vertex(x+60, y+50);
  vertex(x+40, y+80);
  vertex(x, y+80);
  vertex(x-20, y+60);
  vertex(x-20, y+20);
  endShape();
}

void boulderroll() {
  int angle = 0;
  rotate(angle);

  angle = angle + 1;
}

void sun() {
  if (r<280) {
    background(164, 119, 83);
    noStroke();
    fill(249, 215, 28, 200);
    int sunX = 0;
    int sunY = 700;
    pushMatrix();
    translate(450, 750); //rotate at the center of page
    rotate(radians(r));  // rotate sun and moon
    r = r+1; //adds angle
    if (r>300) {
      r=0;
    }
    ellipse(sunX, sunY, 500, 500);
    popMatrix();
  } else {
    r=0;
  }
}

void moon() {
  stroke(0);
  fill(58, 58, 58);
  int moonX = 0;
  int moonY = 700;
  if (r<360) {
    pushMatrix();
    translate(450, 750); //rotate at the center of page
    rotate(radians(r));  // rotate sun and moon
    r = r+1; //minus angle
    ellipse(moonX, moonY, 500, 500);//big moon
    //holes within
    fill(50, 50, 58, 200);
    strokeWeight(3);
    stroke(50, 50, 58, 200);
    for (int i=0; i<6; i++) {
      ellipse(moonX+z.get(i), moonY+w.get(i), a.get(i), b.get(i));
    }
    popMatrix();
  } else {
    r=0;
  }
}

void sunandmoon() {
  frameRate(30);
  time += 1;
  if ((time / 300) % 2 == 0) {
    //nightsky
    background(0);
    fill(255);
    noStroke();
    for (int i=0; i<20; i++) {
      ellipse(x.get(i), y.get(i), 5, 5);
    }
    moon();
  } else {
    background(164, 119, 83);
    sun();
  }
}

void sisyphus(int bodyx1, int bodyy1) {
  stroke(255);
  strokeWeight(3);
  fill(255);
  //head
  ellipse(bodyx1, bodyy1, 10, 10);
  //body
  line(bodyx1, bodyy1, bodyx1-5, bodyy1+30);
  //arm
  line(bodyx1-2, bodyy1+15, bodyx1+10, bodyy1+20);
  line(bodyx1-2, bodyy1+15, bodyx1+12, bodyy1+15);
  //legstate1
  line(bodyx1-5, bodyy1+30, bodyx1-8, bodyy1+36);
  line(bodyx1-8, bodyy1+36, bodyx1-11, bodyy1+43);
  line(bodyx1-5, bodyy1+30, bodyx1+5, bodyy1+30);
  line(bodyx1+5, bodyy1+30, bodyx1+3, bodyy1+43);
}

void sisyphusmove() {
  int x = 75;
  int y = 680;
  int xspeed = 10;
  int yspeed = -10;
  while (x<800) {
    x += xspeed;
    y += yspeed;
  }
  sisyphus(x, y);
}
