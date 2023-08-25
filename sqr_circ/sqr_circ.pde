void setup() {
    size(512, 512);
}

void draw() {
    background(0);
    noStroke();
    grid(0, 0, width, height);
}

void grid(int x, int y, int _w, int _h) {
    firstQuadrant(x, y, _w/2, _h/2);
    secQuadrant(x + _w/2, y, _w/2, _h/2);
    thiQuadrant(x + _w/2, y + _h/2, _w/2, _h/2);
    forQuadrant(x, y + _h/2, _w/2, _h/2);
}

void firstQuadrant(int x, int y, int _w, int _h) {
    fill(255);
    triangle(x, y, x + _w/2, y + _h/2, x, y + _h);
    triangle(x + _w, y, x + _w/2, y + _h/2, x + _w, y + _h);
    fill(256/2);
    triangle(x, y, x + _w/2, y + _h/2, x + _w, y);
    triangle(x, y + _h, x + _w/2, y + _h/2, x + _w, y + _h);
}

void secQuadrant(int x, int y, int _w, int _h) {
    fill(256/2);
    triangle(x, y, x + _w/2, y, x + _w/2, y + _h/2);
    triangle(x, y + _h, x + _w/2, y + _h, x + _w/2, y + _h/2);
    triangle(x + _w/2, y, x + _w/2, y + _h, x + _w, y + _h/2);
}

void thiQuadrant(int x, int y, int _w, int _h) {
    fill(256/2);
    rect(x, y, _w, _h);
    fill(255);
    arc(x, y + _h, _w*2, _h*2, 3*PI/2, 2*PI);
    fill(0);
    arc(x, y + _h, _w, _h, 3*PI/2, 2*PI);
}

void forQuadrant(int x, int y, int _w, int _h) {
    fill(255);
    arc(x + _w, y + _h, _w*2, _h*2, PI, 3*PI/2);
    fill(0);
    arc(x + _w, y + _h, _w, _h, PI, 3*PI/2);
}

void keyPressed() {
    if (key == CODED) {
        if (keyCode == ESC) {
            exit();
        }
    }
}