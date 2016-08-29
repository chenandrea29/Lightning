int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
int r = (int)(Math.random()*255);
int g = (int)(Math.random()*255);
int b = (int)(Math.random()*255);

void setup()
{
  size(300,300);
  background(0);
  strokeWeight(2);
  noLoop();
}

void draw()
{
	stroke(r, g, b);
	while (endX < 300) {
		endX = startX + (int)(Math.random()*9);
		endY = startY + (int)(Math.random()*18)-9;
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}

}

void mousePressed()
{
	int startX = 0;
	int startY = 150;
	int endX = 0;
	int endY = 150;
	int r = (int)(Math.random()*255);
	int g = (int)(Math.random()*255);
	int b = (int)(Math.random()*255);
	redraw();
}

