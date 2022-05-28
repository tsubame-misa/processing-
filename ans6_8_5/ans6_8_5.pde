for (int i = 1; i < 100; i++) {
  if (i%7==0) {
    print(i + " ");
  }
}

println(); //ただの改行

int n = 1;
while (n < 100) {
  if (n%7==0) {
    print(n + " ");
  }
  n += 1;
}


println(); //ただの改行


// 別解
n = 7;
int d = 7;
while (n < 100) {
  print(n + " ");
  n += d;
}
