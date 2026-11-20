import 'dart:io';

void main() {
  stdout.write('Enter a list of numbers');
  List<int>numbers =[] ;
  while(true){
    int num = int.parse(stdin.readLineSync()!);
    if(num == -1){
      break;
    }else{
      numbers.add(num);
    }
  }
  reverseArray(numbers);
}
 void reverseArray(List<int>numbers){
  for(int i = numbers.length - 1 ; i >= 0 ; i--){
    stdout.write('${numbers[i]} ');
  }
  return;
}
