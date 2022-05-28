int students_len = 100;
int progs[] = new int[students_len];
int maths[] = new int[students_len];
int engls[] = new int[students_len];

int max_score = 0; //最高点
int max_student_num = -1;//最高点を持つ学生の番号：始めは誰も見ていないので、学籍番号と被らない-1としている

/*
方針
学生を0から100まで見ていく
今見ている学生の合計得点が最高点：max_scoreよりも高ければ最高点をmax_scoreに, 学籍番号もmax_student_numに上書き
これを繰り返す
_
*/

for (int i = 0; i < students_len; i++) {
  
  progs[i] = int(random(50, 100));
  maths[i] = int(random(50, 100));
  engls[i] = int(random(50, 100));
  
  int total = progs[i] + maths[i] + engls[i];
  
  if(total > max_score){ //合計点が今までの合計の最高点より高かったら
    max_score = total; //最高点の更新
    max_student_num = i; //学籍番号を更新
  }
  
}

println("学籍番号：" + max_student_num + " 合計得点:" + max_score);
