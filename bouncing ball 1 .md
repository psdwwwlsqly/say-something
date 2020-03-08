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



emm...

一个processing初学者的 bouncing ball 串改尝试

刚刚接触编程的我觉得，编程真的难并有趣着……

几天下来我认识到了计算机计算的理性。只要又一点错误，它就无法运行。同时，我也顺利地认识到了所谓的什么是少一个“ } ”的痛苦……

在现有的认知中，有几点让我觉得很有意思。

​          random，毕竟是真的是有无数的可能性，从某种角度上来说，有点像未来，或者说……明天。琢磨不清，每一次运行，或者醒来都不一样。

​         RGB colour，用数字来表现颜色对于一个艺术生来说多少有些陌生。通过数字搭配可以找到我最想要的效果。

运行这几行代码，可以通过视觉感受到我在写这些代码是的感受，复杂，未知，混乱，毫无头绪……

或者……也可以把它看成是任何东西，它也没有什么明确的定义。

emm...比如不让我开学的……病毒？！kk

