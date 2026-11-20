import 'dart:io';

void main() {
  print('Enter a list of numbers');
  List<int>numbers =[] ;
  while(true){
    int num = int.parse(stdin.readLineSync()!);
    if(num == -1){
      break;
    }else{
      numbers.add(num);
    }
  }
  getDistinctNumbers(numbers);
}


void getDistinctNumbers(List<int> numbers) {
  int count = 0;

  for (int i = 0; i < numbers.length; i++) {
    bool isDistinct = true;
    for (int j = 0; j < i; j++) {
      if (numbers[i] == numbers[j]) {
        isDistinct = false;
        break;
      }
    }
    if (isDistinct) {
      stdout.write('${numbers[i]} ');
      count++;
    }
  }
  print( "\n");
  print('Number of distinct numbers = $count');
}
