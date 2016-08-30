int startX;
int startY;
int endX;
int endY;
int r;
int g;
int b;

void setup()
{
  size(500, 500);
  background(0);
  strokeWeight(2);
}

void draw()
{
	fill(0, 0, 0, 10);
	rect(0, 0, 500, 500);
}

void mousePressed()
{
	newLightning();
}

void drawLightning() {
	while (endY < 500) {
		endX = startX + (int)(Math.random()*19)-9;
		endY = startY + (int)(Math.random()*10);
		stroke(r, g, b);
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}
}

void newLightning() {
	startX = (int)(Math.random()*501);
	startY = 0;
	r = (int)(Math.random()*255);
	g = (int)(Math.random()*255);
	b = (int)(Math.random()*255);
	drawLightning();
}


