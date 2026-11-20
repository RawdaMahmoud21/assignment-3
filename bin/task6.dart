import 'dart:io';

void main() {
  print('Enter a list of scores');
  List<int>scores =[] ;
  while(true){
    int num = int.parse(stdin.readLineSync()!);
    if(num == -1){
      break;
    }else{
      scores.add(num);
    }
  }
  analyzeScores(scores);
}



void analyzeScores(List<int> scores) {
  int sum = 0;
  int aboveOrEqual = 0;
  int below = 0;

  for (int i = 0; i < scores.length; i++) {
    sum += scores[i];
  }
  double average = sum / scores.length;
  for (int i = 0; i < scores.length; i++) {
    if (scores[i] >= average) {
      aboveOrEqual++;
    } else {
      below++;
    }
  }

  print('Average = $average');
  print('Scores above or equal to average = $aboveOrEqual');
  print('Scores below average = $below');
}