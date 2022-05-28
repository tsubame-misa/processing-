int data_len = 100;
int data[] = new int[data_len];

for(int i = 0; i < data_len; i++){
  data[i] = int(random(100));
}

int n = 0;
while(n < data_len){
  print(data[n]+" "); //確認方法： println(n+":"+data[n]);で添字がn(0, 3, 6..)の時かを確認
  n += 3;//2じゃないんだよね、注意
}
