void setup() {
  size(1280, 720);
  smooth();
}

void draw() {
  background(0);
  strokeWeight(2);
  stroke(130,80,100,30);
  fill(210,160,150,20);

for (int i=0;i<299;i=i+30){
int point = int(map(i,0,299,40,100));//map()

mPolygon(width/2,height/2,point,i,i/8);
}
}

void mPolygon(int x, int y,int numOfVertex, int br, int rOff){
beginShape();
for (int i=0;i<numOfVertex;i++){
float a = sin(radians(millis()/0.1+100*i));
float r = br+map(a,-1,1,-rOff,rOff);
vertex(x+cos(radians(i*360/numOfVertex))*r,y+sin(radians(i*360/numOfVertex))*r);
}
endShape(CLOSE);
}
