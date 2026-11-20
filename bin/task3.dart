
import 'dart:io';

void main () {
  List<int>numbers =[8,0,1,5];
  print('Enter number to search :');
  int numSearch = int.parse(stdin.readLineSync()!);
  containsValue(numbers, numSearch);
}

containsValue(List<int>numbers,int numSearch){

  for(int i = 0 ; i < numbers.length; i++){
    if(numbers[i] == numSearch){
      print ("Yes");
      return;
    }
  }
  print("No");
}
