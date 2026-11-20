import 'dart:io';

void main () {
  print('Enter a list of grades : ');
  List<int>grades =[] ;
  while(true){
    int score = int.parse(stdin.readLineSync()!);
    if(score == -1 || score > 100){
      break;
    }else{
      grades.add(score);
    }

  }
  assignGrades(grades);
}

 assignGrades(List<int>grades){
  int bestScore = grades[0];
  for (int i = 0; i < grades.length; i++) {
    if (grades[i] > bestScore) {
      bestScore = grades[i];
    }
  }

  for (int i = 0; i < grades.length; i++) {
    if (grades[i] >= bestScore - 10) {
      print('Student ${i + 1} score is ${grades[i]} and grade is A');
    } else if (grades[i] >= bestScore - 20) {
      print('Student ${i + 1} score is ${grades[i]} and grade is B');
    } else if (grades[i] >= bestScore - 30) {
      print('Student ${i + 1} score is ${grades[i]} and grade is C');
    } else if (grades[i] >= bestScore - 40) {
      print('Student ${i + 1} score is ${grades[i]} and grade is D');
    } else {
      print('Student ${i + 1} score is ${grades[i]} and grade is F');
    }
  }
}
