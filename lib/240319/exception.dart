class StringToIntPrinter {
  final _numString;

  StringToIntPrinter(this._numString);

  int getNumString() {
    int num;
    try {
      num = int.parse(_numString);
    } catch(e) {
      num = 0;
    }
    return num;
  }
}

void main() {
  final numString = '10.5';

  int num;
  try {
    num = int.parse(numString);
  } catch(e) {
    num = 0;
  }

  print(num);
}