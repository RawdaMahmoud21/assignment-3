import 'dart:io';

void main () {
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
  int secMin = getSecondSmallest(numbers);
  print('The second smallest is : $secMin');
}
getSecondSmallest(List<int>numbers){
  numbers.sort();
  return numbers[1];

}