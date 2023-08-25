void setup() {
    size(512, 512);
}

void draw() {
    background(255);
    noStroke();
    int grid_h = 50;
    int grid_w = 200;
    perspective_rect(width/2 - grid_w, height/2, grid_w, grid_h);
}

void perspective_rect(int x, int y, int w, int h) {
    fill(170);
    triangle(x, y, x + w, y + h, x + w*2, y - h*2);
    fill(85);
    triangle(x, y, x + w, y + h, x + w, y + h*3);
    fill(0);
    triangle(x + w, y + h, x + w, y + h*3, x + w*2, y - h*2);
}

void keyPressed() {
    if (key == CODED) {
        if (keyCode == ESC) {
            exit();
        }
    }
}