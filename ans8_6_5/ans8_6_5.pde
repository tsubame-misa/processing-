int balls = 30;
float xs[] = new float[balls];
float ys[] = new float[balls];
float stepXs[] = new float[balls];
float stepYs[] = new float[balls];
float d = 50;
boolean hovered[] = new boolean[balls]; //マウスポインタが一度でも乗ったかどうかを保存する配列

void setup() {
  size(800, 600);
  for (int i = 0; i < balls; i++) {
    xs[i] = random(d, width-d);
    ys[i] = random(d, height-d);
    stepXs[i] = random(1, 5);
    stepYs[i] = random(1, 5);
  }
}

void draw() {
  background(255);

  for (int i = 0; i < balls; i++) {
    fill(255);
    if (hovered[i]) { //マウスポインタが乗ったことあるなら赤色で塗る
      fill(255, 0, 0);
    }
    ellipse(xs[i], ys[i], d, d);

    if (dist(xs[i], ys[i], mouseX, mouseY) < d/2) { //マウスポインタが乗ったら配列に乗ったことを保存する
      hovered[i] = true;
    }

    if (xs[i] > width-d/2 || xs[i] < d/2) {
      stepXs[i] *= -1;
    }
    if (ys[i] > height-d/2 || ys[i] < d/2) {
      stepYs[i] *= -1;
    }

    xs[i] += stepXs[i];
    ys[i] += stepYs[i];
  }
}
