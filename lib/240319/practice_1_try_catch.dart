void main() {
  final numString = '10.1';

  TryCatch aa = TryCatch();
  print(aa.checkException(numString));
}

class TryCatch {


  int checkException(String numString) {
    int num;

    try {
      num = int.parse(numString);
    } catch (error) {
      num = 0;
    }
    return num;
  }
}
