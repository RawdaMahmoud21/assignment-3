void main() {
  List<int> numbers = [1, 2, 3, 2, 4, 1, 5, 3, 2];

  countGeneral(numbers);
}
void countGeneral(List<int> numbers) {
  for (int i = 0; i < numbers.length; i++) {
    int count = 1;
    bool isCounted = false;
    for (int j = 0; j < i; j++) {
      if (numbers[i] == numbers[j]) {
        isCounted = true;
        break;
      }
    }

    if (isCounted == false) {
      for (int j = i + 1; j < numbers.length; j++) {
        if (numbers[i] == numbers[j]) {
          count++;
        }
      }
      print('${numbers[i]} occurs $count times');
    }
  }
}