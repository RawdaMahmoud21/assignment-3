
import 'dart:io';

void main (){
  List<int>numbers=[];
  print('Enter a numbers to check :');
  while(true){
    int num = int.parse(stdin.readLineSync()!);
    if(num == -1){
      break;
    }else{
      numbers.add(num);
    }

  }
  int result = getMin(numbers);
  print('The Minimum number is : $result ');

}


getMin(List<int>numbers){
  int min = numbers[0];
  for(int i = 1 ; i < numbers.length;i++){
    if(min>numbers[i]){
      min = numbers[i];
    }
  }
  return min ;
}