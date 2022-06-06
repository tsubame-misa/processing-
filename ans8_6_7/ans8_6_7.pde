int balls = 30; //ここを1にすれば一個のボールの動きを確認できる(ちゃんと3度跳ね返ったら赤くなってるかを確認できる)
float xs[] = new float[balls];
float ys[] = new float[balls];
float stepXs[] = new float[balls];
float stepYs[] = new float[balls];
float d = 50;
int count[] = new int[balls]; //跳ね返った回数を保存する

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
    fill(255, 255, 0);
    if (count[i]>=3) { //3回以上跳ね返っているなら赤く塗る
      fill(255, 0, 0);
    }
    ellipse(xs[i], ys[i], d, d);

    if (xs[i] > width-d/2 || xs[i] < d/2) {
      stepXs[i] *= -1;
      count[i] += 1; //壁で跳ね返ったことを記録
    }
    if (ys[i] > height-d/2 || ys[i] < d/2) {
      stepYs[i] *= -1;
      count[i] += 1; //壁で跳ね返ったことを記録
    }

    xs[i] += stepXs[i];
    ys[i] += stepYs[i];
  }
}
