let r = 0;
let x = [];
let y = [];
let z = [];
let w = [];
let a = [];
let b = [];
let time = 0;
let locx = 100;
let locy = 650;
let angle = 0;
let d  = true;

class Boulder{
  constructor(x,y){
    this.locx = x;
    this.locy = y;
  }
  display(roll){
  noStroke();
  fill(35, 35, 35);
  if (roll){
    beginShape();
    vertex(-20, -40);
    vertex(-20+ 40, -40);
    vertex(-20 + 60, -40 + 20);
    vertex(-20 + 60, -40 + 50);
    vertex(-20 + 40, -40 + 80);
    vertex(-20, -40 + 80);
    vertex(-20 - 20, -40 + 60);
    vertex(-20 - 20, -40 + 20);
    endShape();
  } else {
      beginShape();
      vertex(this.locx, this.locy);
      vertex(this.locx+ 40, this.locy);
      vertex(this.locx + 60, this.locy + 20);
      vertex(this.locx + 60, this.locy + 50);
      vertex(this.locx + 40, this.locy + 80);
      vertex(this.locx, y + 80);
      vertex(this.locx - 20, this.locy + 60);
      vertex(this.locx - 20, this.locy + 20);
      endShape();
    }
 }


 update(){
      frameRate(500);
    if (((this.locx == 100 && this.locy == 650) || (this.locx <= 830 && this.locy >= 550))) {
      // first climb
      push();
      translate(this.locx + 20, this.locy + 40);
      rotate(angle);
      this.display(true);
      pop();
      this.locx += 0.73;
      this.locy -= 0.1;
      angle = angle + 0.05;
    } else if ((this.locx == 830 && this.locy == 550) || (this.locx >= 220 && this.locy >= 500)) {
      // second climb
      push();
      translate(this.locx + 20, this.locy + 40);
      rotate(angle);
      this.display(true);
      pop();
      this.locx -= 0.61;
      this.locy -= 0.05;
      angle = angle - 0.05;
    } else if ((this.locx == 220 && this.locy == 500) || (this.locx <= 660 && this.locy >= 340)) {
      // thrid climb
      push();
      translate(this.locx + 20, this.locy + 40);
      rotate(angle);
      this.display(true);
      pop();
      this.locx += 0.44;
      this.locy -= 0.16;
      angle = angle + 0.05;
    } else if ((this.locx == 660 && this.locy == 340) || (this.locx >= 370 && this.locy >= 300)) {
      // 4th climb
      push();
      translate(this.locx + 20, this.locy + 40);
      rotate(angle);
      this.display(true);
      pop();
      this.locx -= 0.29;
      this.locy -= 0.04;
      angle = angle - 0.05;
    } else if ((this.locx == 370 && this.locy == 300) || (this.locx <= 540 && this.locy >= 180)) {
      // 5th climb
      push();
      translate(this.locx + 20, this.locy + 40);
      rotate(angle);
      this.display(true);
      pop();
      this.locx += 0.17;
      this.locy -= 0.12;
      angle = angle + 0.05;
    } else if ((this.locx == 540 && this.locy == 180) || (this.locx >= 490 && this.locy >= 80)) {
      // 6th climb
      push();
      translate(this.locx + 20, this.locy + 40);
      rotate(angle);
      this.display(true);
      pop();
      this.locx -= 0.05;
      this.locy -= 0.1;
      angle = angle - 0.05;
    }
 }
}
 
class Sys{
  constructor(bodyx1,bodyy1){
    this.bodyx1 = bodyx1;
    this.bodyy1 = bodyy1;
  }
  displayLeft(){
      stroke(255);
      strokeWeight(3);
      fill(255);
      // head
      ellipse(this.bodyx1+100, this.bodyy1, 10, 10);
      // body
      line(this.bodyx1+100, this.bodyy1, this.bodyx1 +95, this.bodyy1 + 30);
      // arm
      line(this.bodyx1 +98, this.bodyy1 + 15, this.bodyx1 +86, this.bodyy1 + 20);
      line(this.bodyx1 +98, this.bodyy1 + 15, this.bodyx1 +84, this.bodyy1 + 15);
      // legstate1
      // back leg
      line(this.bodyx1 +95, this.bodyy1 + 30, this.bodyx1 +95, this.bodyy1 + 36);
      // back leg
      line(this.bodyx1 +95, this.bodyy1 + 36, this.bodyx1 +101, this.bodyy1 + 43);
      // front leg
      line(this.bodyx1 +95, this.bodyy1 + 30, this.bodyx1 +85, this.bodyy1 + 30);
      // front leg
      line(this.bodyx1 +85, this.bodyy1 + 30, this.bodyx1 +87, this.bodyy1 + 43);
  }
  displayRight(){
      stroke(255);
      strokeWeight(3);
      fill(255);
      // head
      ellipse(this.bodyx1, this.bodyy1, 10, 10);
      // body
      line(this.bodyx1, this.bodyy1, this.bodyx1 - 5, this.bodyy1 + 30);
      // arm
      line(this.bodyx1 - 2, this.bodyy1 + 15, this.bodyx1 + 10, this.bodyy1 + 20);
      line(this.bodyx1 - 2, this.bodyy1 + 15, this.bodyx1 + 12, this.bodyy1 + 15);
      // legstate1
      // back leg
      line(this.bodyx1 - 5, this.bodyy1 + 30, this.bodyx1 - 8, this.bodyy1 + 36);
      // back leg
      line(this.bodyx1 - 8, this.bodyy1 + 36, this.bodyx1 - 11, this.bodyy1 + 43);
      // front leg
      line(this.bodyx1 - 5, this.bodyy1 + 30, this.bodyx1 + 5, this.bodyy1 + 30);
      // front leg
      line(this.bodyx1 + 5, this.bodyy1 + 30, this.bodyx1 + 3, this.bodyy1 + 43);
    }
  
  update(){
    frameRate(500);
    if (((this.bodyx1 == 75 && this.bodyy1 == 690) || (this.bodyx1 <= 805 && this.bodyy1 >= 590))) {
      // first climb
      this.displayRight(this.bodyx1 - 25, this.bodyy1 + 40);
      this.bodyx1 += 0.73;
      this.bodyy1 -= 0.1;
    } else if ((this.bodyx1 == 805 && this.bodyy1 == 590) || (this.bodyx1 >= 195 && this.bodyy1 >= 540)) {
      // second climb
      this.displayLeft(this.bodyx1 + 75, this.bodyy1 + 40);
      this.bodyx1 -= 0.61;
      this.bodyy1 -= 0.05;
    } else if ((this.bodyx1 == 195 && this.bodyy1 == 540) || (this.bodyx1 <= 635 && this.bodyy1 >= 380)) {
      // thrid climb
      this.displayRight(this.bodyx1 - 25, this.bodyy1 + 40);
      this.bodyx1 += 0.44;
      this.bodyy1 -= 0.16;
    } else if ((this.bodyx1 == 635 && this.bodyy1 == 380) || (this.bodyx1 >= 345 && this.bodyy1 >= 340)) {
      // 4th climb
      this.displayLeft(this.bodyx1 + 75, this.bodyy1 + 40);
      this.bodyx1 -= 0.29;
      this.bodyy1 -= 0.04;
    } else if ((this.bodyx1 == 345 && this.bodyy1 == 340) || (this.bodyx1 <= 515 && this.bodyy1 >= 220)) {
      // 5th climb
      this.displayRight(this.bodyx1 - 25, this.bodyy1 + 40);
      this.bodyx1 += 0.17;
      this.bodyy1 -= 0.12;
    } else if ((this.bodyx1 == 515 && this.bodyy1 == 220) || (this.bodyx1 >= 465 && this.bodyy1 >= 120)) {
      // 6th climb
      this.displayLeft(this.bodyx1 + 75, this.bodyy1 + 40);
      this.bodyx1 -= 0.05;
      this.bodyy1 -= 0.1;
    }
  }
}

sys = new Sys (75,690);
boulder = new Boulder(100,650);

function setup() {

  createCanvas(1100, 750);
  for (let i = 0; i < 20; i++) {
    append(x, int(random(0, 1100)));
    append(y, int(random(0, 750)));
  }
  for (let j = 0; j < 6; j++) {
    append(z, int(random(-125, 125)));
    append(w, int(random(-125, 125)));
    append(a, int(random(30, 60)));
    append(b, int(random(39, 60)));
  }
}

function draw() {
  sunandmoon();
  mountain();
  path();
  sys.update();
  boulder.update();
}


function mountain() {
  fill(60, 60, 60);
  stroke(60, 60, 60);
  strokeWeight(10);
  beginShape();
  // 1
  vertex(20, 750);
  // 2
  vertex(120, 600);
  // 3
  vertex(140, 600);
  // 4
  vertex(240, 450);
  // 5
  vertex(260, 450);
  // 6
  vertex(360, 300);
  // 7
  vertex(380, 300);
  // 8
  vertex(480, 150);
  // 9
  vertex(550, 150);
  // 10
  vertex(650, 300);
  // 11
  vertex(670, 300);
  // 12
  vertex(770, 450);
  // 13
  vertex(790, 450);
  // 14
  vertex(900, 600);
  // 15
  vertex(920, 600);
  // 16
  vertex(1020, 750);
  // 17
  vertex(900, 750);
  // 18
  vertex(0, 750);
  endShape();
}

function path() {
  strokeWeight(40);
  stroke(164, 119, 83, 180);
  // first path
  curve(400, 400, 68, 700, 885, 600, 700, 500);
  // second path
  curve(450, 300, 188, 550, 885, 600, 600, 400);
  // third path
  curve(450, 300, 188, 550, 720, 400, 600, 400);
  // fourth path
  curve(350, 500, 338, 350, 720, 400, 600, 400);
  // fifth path
  curve(250, 100, 338, 350, 570, 230, 300, 400);
  // sixth path
  curve(100, -500, 500, 162, 570, 230, 300, 400);
}

function boulderroll() {
  push();
  translate(locx + 20, locy + 40);
  rotate(angle);
  boulder(-20, -40);
  pop();
  if (((locx == 100 && locy == 650) || (locx <= 830 && locy >= 550))) {
    // first climb
    angle = angle + 0.05;
  } else if ((locx == 830 && locy == 550) || (locx >= 220 && locy >= 500)) {
    // second climb
    angle = angle - 0.05;
  } else if ((locx == 220 && locy == 500) || (locx <= 660 && locy >= 340)) {
    // thrid climb
    angle = angle + 0.05;
  } else if ((locx == 660 && locy == 340) || (locx >= 370 && locy >= 300)) {
    // 4th climb
    angle = angle - 0.05;
  } else if ((locx == 370 && locy == 300) || (locx <= 540 && locy >= 180)) {
    // 5th climb
    angle = angle + 0.05;
  } else if ((locx == 540 && locy == 180) || (locx >= 490 && locy >= 80)) {
    // 6th climb
    angle = angle - 0.05;
  }
}

function sun() {
  if (r < 280) {
    noStroke();
    fill(249, 215, 28, 200);
    let sunX = 0;
    let sunY = 700;
    push();
    // rotate at the center of page
    translate(450, 750);
    // rotate sun and moon
    rotate(radians(r));
    // adds angle
    r = r + 1;
    if (r > 300) {
      r = 0;
    }
    ellipse(sunX, sunY, 500, 500);
    pop();
  } else {
    r = 0;
  }
}

function moon() {
  stroke(0);
  fill(58, 58, 58);
  let moonX = 0;
  let moonY = 700;
  if (r < 360) {
    push();
    // rotate at the center of page
    translate(450, 750);
    // rotate sun and moon
    rotate(radians(r));
    // minus angle
    r = r + 1;
    // big moon
    ellipse(moonX, moonY, 500, 500);
    // holes within
    fill(50, 50, 58, 200);
    strokeWeight(3);
    stroke(50, 50, 58, 200);
    for (let i = 0; i < 6; i++) {
      ellipse(moonX + z[i], moonY + w[i], a[i], b[i]);
    }
    pop();
  } else {
    r = 0;
  }
}

function sunandmoon() {
  frameRate(20);
  time += 1;
  print(parseInt((time / 300) % 2));
  if (parseInt((time / 300) % 2) == 0) {
    print(moon);
    // night sky
    background(0);
    fill(255);
    noStroke();
    for (let i = 0; i < 20; i++) {
      ellipse(x[i], y[i], 5, 5);
    }
    moon();
  } else {
    // day light
    print(sun);
    background(135, 206, 235);
    sun();
  }
}
