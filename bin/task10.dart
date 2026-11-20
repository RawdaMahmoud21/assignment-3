
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
  selectionSort(numbers);
}



void selectionSort(List<int> numbers) {

  for (int i = 0; i < numbers.length - 1; i++) {
    int min = i;
    for (int j = i + 1; j < numbers.length; j++) {
      if (numbers[j] < numbers[min]) {
        min = j;
      }
    }
    if (min != i) {
      int temp = numbers[i];
      numbers[i] = numbers[min];
      numbers[min] = temp;
    }
  }
  print(numbers);
}