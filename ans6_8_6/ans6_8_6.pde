int min = 9000;
int max = 10000;

for (int i = max; i >= min; i--) { //降順にしたい時はこのように、スタート地点からゴール地点まで、引いていけばいい
  if (i%11==0) {
    print(i + " ");
  }
}


println("-----");


int n = max;
while (n >= min) {
    if(n%11==0){
      print(n + " ");
    }
    n -= 1;
}
