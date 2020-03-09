int c = 130;
float[] x = new float[c];
float[] y = new float[c];
float[] xSpeed = new float[c];
float[] ySpeed = new float[c];
float[] size = new float[c];
float[] r = new float[c];
float[] g = new float[c];
float[] b = new float[c];
float[]alpha=new float[c];

void setup() {
  size(1280, 720);
  smooth();

  for(int i = 0; i < c; i++){
    x[i] = random(width);
    y[i] = random(height);
    xSpeed[i] = random(-5, 5);
    ySpeed[i] = random(-5, 5);
    size  [i] = random(30, 100);
    r[i] = random(150);
    g[i] = random(40);
    b[i] = random(220);
    alpha[i]=random(200);
  }
}

void draw() {
  background(0);
  strokeWeight(0.1);


  for(int i = 0; i < c; i++){
    
    x[i] += xSpeed[i];
    y[i] += ySpeed[i];
  
    
    if((x[i] < 0 )|| (x[i] > width)){
      xSpeed[i] = xSpeed[i] * -1;
    }
    
    if((y[i] < 0 )|| (y[i] > height)){
      ySpeed[i] = ySpeed[i] * -1;
    }
    
    fill(r[i], g[i], b[i],alpha[i]);
    ellipse(x[i], y[i], size[i], size[i]);
    stroke(r[i], g[i], b[i],alpha[i]);
  }
}
