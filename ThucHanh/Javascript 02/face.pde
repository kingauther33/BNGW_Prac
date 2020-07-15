
void setup()
{
  size(1000,500);
}

noStroke();
var x;
var speed1 = 0.5;
var eyeSize1 = 40;
var speedBase = 0.5;

drawFace = function(x, size, color, speed) {
    // face
    fill(255, color, 0);
    ellipse(x, 208, 300, 300);

    // eyes
    fill(46, 46, 41);
    ellipse(x - 50, 151, size, size);
    ellipse(x + 100, 142, size, size);

    // mouth
    fill(0, 0, color);
    ellipse(x + 50, 240, 120, 136);

    eyeSize1 -= speed;
};

draw = function () {
    background(204, 204, 204);
    drawFace(200, eyeSize1 + 10, 255, speedBase);
    drawFace(525, eyeSize1 + 20, 100, speedBase);
    drawFace(850, eyeSize1 + 25, 50, speedBase);
    if (eyeSize1 <= -25) {
        speedBase = -speedBase;
    } else if (eyeSize1 >= 50) {
        speedBase = -speedBase;
    }
}


