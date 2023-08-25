int qtd = 3;

void setup() {
    size(512, 512);
}

void draw() {
    for (int i = 0; i < qtd; i++) {
        for (int o = 0; o < qtd; o++) {
            fill(256 / qtd * o, 0, 256 / qtd * i);
            noStroke();
            rect(i + ((width/qtd) * i), o + ((width/qtd) * o), width/qtd, height/qtd);
        }
    }
}

// ESC to exit
void keyPressed() {
    if (key == CODED) {
        if (keyCode == ESC) {
            exit();
        }
        else if (keyCode == UP && qtd < 32) {
            qtd++;
        }
        else if (keyCode == DOWN && qtd > 1) {
            qtd--;
        }
    }
}