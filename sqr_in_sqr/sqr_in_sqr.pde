int qtd = 1;

void setup() {
    size(512, 512);
}

void draw() {
    background(25);
    
    grid(0, 0, width, height, 40);
}

void grid(int x, int y, int _w, int _h, int offset) {
    fill(225);
    noStroke();
    triangle(x, y, x + _w/2 - offset*1.5, y, x, y + _h/2 - offset*1.5);
    triangle(x + _w, y, x + _w/2 + offset*1.5, y, x + _w, y + _h/2 - offset*1.5);
    triangle(x, y + _h, x, y + _h/2 + offset*1.5, x + _w/2 - offset*1.5, y + _h);
    triangle(x + _w, y + _h, x + _w/2 + offset*1.5, y + _h, x + _w, y + _h/2 + offset*1.5);

    triangle(x + _w/2, y + _h/2, x + _w/2, y + offset*1.5, x + offset*1.5, y + _h/2);
    triangle(x + _w/2, y + _h/2, x + _w/2, y + offset*1.5, x + _w - offset*1.5, y + _h/2);
    triangle(x + _w/2, y + _h/2, x + offset*1.5, y + _h/2, x + _w/2, y + _h - offset*1.5);
    triangle(x + _w/2, y + _h/2, x + _w/2, y + _h - offset*1.5, x + _w - offset*1.5, y + _h/2);

    fill(25);
    triangle(x + _w/2, y + _h/2, x + _w/2, y + offset*4, x + offset*4, y + _h/2);
    triangle(x + _w/2, y + _h/2, x + _w/2, y + offset*4, x + _w - offset*4, y + _h/2);
    triangle(x + _w/2, y + _h/2, x + offset*4, y + _h/2, x + _w/2, y + _h - offset*4);
    triangle(x + _w/2, y + _h/2, x + _w - offset*4, y + _h/2, x + _w/2, y + _h - offset*4);

    noFill();
    stroke(25);
    strokeWeight(20);
    rect(x, y, _w, _h);
    
}

// ESC to exit
void keyPressed() {
    if (key == CODED) {
        if (keyCode == ESC) {
            exit();
        }
    }
}