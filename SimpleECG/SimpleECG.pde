int xinterval = 0;
int baseline = 300;
int shift = 200;
int now;
int wait = 1000;
PFont font;

void setup () {
  size(1024, 768);        
  background(255);
  font = createFont("Arial",16);
  textFont(font);
  frameRate(2);
  now = millis();
}
void draw () {

  fill(0,0,128);
  //text("F3",29,24);

  fill(0);
  stroke(0);
  strokeWeight(1);
  //P-wave
  line(xinterval*shift+0,height - baseline,xinterval*shift+40,height - baseline);
  line(xinterval*shift+40,height - baseline,xinterval*shift+54,height - (baseline + 14));
  line(xinterval*shift+54,height - (baseline + 14),xinterval*shift+58,height - (baseline + 16));
  line(xinterval*shift+58,height - (baseline + 16),xinterval*shift+60,height - (baseline + 16));
  line(xinterval*shift+60,height - (baseline + 16),xinterval*shift+64,height - (baseline + 16));
  line(xinterval*shift+64,height - (baseline + 16),xinterval*shift+70,height - baseline);
  line(xinterval*shift+70,height - baseline,xinterval*shift+86,height - baseline);
//  if(millis()-now >= wait){
    //QRS Complex
  line(xinterval*shift+86,height - baseline,xinterval*shift+94,height - (baseline - 16));
  line(xinterval*shift+94,height - (baseline - 16),xinterval*shift+98,height - (baseline + 146));
  line(xinterval*shift+98,height - (baseline + 146),xinterval*shift+106,height - (baseline - 30));
  line(xinterval*shift+106,height - (baseline - 30),xinterval*shift+114,height - baseline);
//    now = millis();
//  }
  //ST segment and T wave
  line(xinterval*shift+114,height - baseline,xinterval*shift+134,height - baseline);
  line(xinterval*shift+134,height - baseline,xinterval*shift+150,height - (baseline + 20));
  line(xinterval*shift+150,height - (baseline + 20),xinterval*shift+154,height - (baseline + 22));
  line(xinterval*shift+154,height - (baseline + 22),xinterval*shift+158,height - (baseline + 22));
  line(xinterval*shift+158,height - (baseline + 22),xinterval*shift+160,height - (baseline + 18));
  line(xinterval*shift+160,height - (baseline + 18),xinterval*shift+164,height - baseline);
  line(xinterval*shift+164,height - baseline,xinterval*shift+220,height - baseline);
  
  if (xinterval*shift >= width) {
    xinterval = 0;

    background(255);

  } 
  else {
    xinterval++;
  }
}