int data_len = 100;
int data[] = new int[data_len];

int count = 0;

for(int i = 0; i < data_len; i++){
  data[i] = int(random(0, 10));
  if(data[i] == 3){
    count += 1;
  }
}

println(count);
  
