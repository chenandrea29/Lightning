int startX;
int startY;
int endX;
int endY;
int r;
int g;
int b;
int mode = 0;

void setup() {
  size(500, 500);
  background(0);
  strokeWeight(2);
}

void draw() {
	fill(0, 0, 0, 10);
	rect(0, 0, 500, 500);
	if (mode == 1) {
		oneColorLightning();
		multiColorLightning();
	}
}

void mousePressed() {
	if (mouseButton == LEFT) {
		oneColorLightning();
	}
	else if (mouseButton == RIGHT) {
		multiColorLightning();
	}
	else if (mouseButton == CENTER) {
		mode = 1;
	}
}

void mouseReleased() {
	mode = 0;
}

void oneColorLightning() {
	startX = mouseX;
	startY = 0;
	endX = 0;
	endY = 0;
	r = (int)(Math.random()*255);
	g = (int)(Math.random()*255);
	b = (int)(Math.random()*255);
	while (endY < 500) {
		endX = startX + (int)(Math.random()*19)-9;
		endY = startY + (int)(Math.random()*10);
		stroke(r, g, b);
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}
}

void multiColorLightning() {
	startX = mouseX;
	startY = 0;
	endX = 0;
	endY = 0;
	while (endY < 500) {
		endX = startX + (int)(Math.random()*19)-9;
		endY = startY + (int)(Math.random()*10);
		r = (int)(Math.random()*255);
		g = (int)(Math.random()*255);
		b = (int)(Math.random()*255);
		stroke(r, g, b);
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}
}


