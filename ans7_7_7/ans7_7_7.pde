int data[] = {10, 20, 30, 40, 50, 60, 70, 80, 90};

/*方針
data[0], data[8]を入れ替える
data[1], data[7]を入れ替える
data[2], data[6]を入れ替える
data[3], data[5]を入れ替える
data[4]はそのまま
*/

for(int i = 0; i < data.length/2; i++){//データの中央まで見れば良いので i < data.length/2
  int tmp = data[i];
  data[i] = data[data.length-1-i]; //data.lengthはデータの個数、データの末尾の添字はdata.length-1
  data[data.length-1-i] = tmp;
}

for(int i = 0; i < data.length; i++){
  print(data[i] + " ");
}
