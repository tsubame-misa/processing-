int weights_len = 100;
float weights[] = new float[weights_len];
float sum = 0;

for(int i = 0; i < weights_len; i++){
  weights[i] = random(40, 60); // random(min, max)でmin以上max未満の実数が返ってくる
  sum += weights[i];
}

float ave = sum/weights_len;
println(ave);
  
