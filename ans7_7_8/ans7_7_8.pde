int data[] = {10, 20, 30, 40, 50,  60, 70, 80, 90, 100};

for(int i = 0; i < data.length/2; i++){ //真ん中まで見る
  data[i] = data[i+1]; //1つ後ろの値を今の位置にコピー
}

data[data.length/2-1]=1000;

for(int i = 0; i < data.length; i++){
  print(data[i] +" " );
}
