int qtd = 1;

void setup() {
    size(600, 600); // width / height;
}

void draw() {
    background(#222323);
    fill(#f0f6f0);
    noStroke();

    for (int i = 0; i < qtd; i++) {
        for (int o = 0; o < qtd; o++) {
            grid(i + ((width/qtd) * i), o + ((height/qtd) * o), width/(qtd*2));
        }
    }
}

void grid(int x, int y, int tri_size) {
    triangle(x, y, x+tri_size, y, x, y+tri_size);
    triangle(x+tri_size, y, x+tri_size, y+tri_size, x+(tri_size*2), y+tri_size);
    triangle(x, y+tri_size, x+tri_size, y+tri_size, x+tri_size, y+(tri_size*2));
    triangle(x+(tri_size*2), y+(tri_size*2), x+(tri_size*2), y+tri_size, x+tri_size, y+(tri_size*2));
}

// ESC to exit
void keyPressed() {
    if (key == CODED) {
        if (keyCode == ESC) {
            exit();
        }
        else if (keyCode == UP && qtd < 8) {
            qtd++;
        }
        else if (keyCode == DOWN && qtd > 1) {
            qtd--;
        }
    }
}