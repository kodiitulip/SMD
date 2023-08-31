void setup() {
    size(512, 512);
}

void draw() {
    background(#f0f6f0);
    grid(0,0,width,height,10);
}

void grid(int x, int y, int _w, int _h, int offset) {
    horizontal_arcs(x + offset/2, y + offset/2, _w/2, offset);
    vertical_arcs(x + offset/2, _h/2 - offset/2, _w/2, offset);
    horizontal_arcs(_w/2 - offset/2, y + offset/2, _w/2, offset);
    horizontal_arcs(_w/2 - offset/2, _h/2 - offset/2, _w/2, offset);
}

void horizontal_arcs(int x, int y, int _w, int offset) {
    fill(#222323);
    arc(x + offset, y + _w/2, _w - offset*4, _w - offset*2, radians(270), radians(360+90));
    arc(x + _w - offset, y + _w/2, _w - offset*4, _w - offset*2, radians(90), radians(270));
}

void vertical_arcs(int x, int y, int _w, int offset) {
    fill(#222323);
    arc(x + _w/2, y + offset, _w - offset*2, _w - offset*4, 0, radians(180));
    arc(x + _w/2, y + _w - offset, _w - offset*2, _w - offset*4, radians(180), radians(360));
}

// ESC to exit
void keyPressed() {
    if (key == CODED) {
        if (keyCode == ESC) {
            exit();
        }
    }
}