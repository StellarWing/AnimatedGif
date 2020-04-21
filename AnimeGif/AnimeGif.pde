ArrayList<PImage> gif;
int x = 0;
void setup() {
  size(498, 280);
  gif = new ArrayList<PImage>();
  int i = 0;
  while (i < 19) {
   String zero = "";
   if(i < 10) zero = "0";
   gif.add(loadImage("frame_" + zero + i + "_delay-0.1s.gif"));
   i++;
  }
  frameRate(18);
}

void draw() {
  PImage frame = gif.get(x);
  image(frame, 0, 0, width, height);
  x++;
  if (x > 18) x = 0;
}
