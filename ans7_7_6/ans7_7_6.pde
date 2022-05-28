int data[] = {10, 20, 30, 40, 50, 60, 70, 80, 90, 100};

for(int i = 0; i < data.length-2; i++){　　　//data.lengthにすると90, 100から３つを足そうとした時,数がなくてエラーになる
  print(data[i] + data[i+1] + data[i+2] +" ");
}
