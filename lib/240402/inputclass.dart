import 'dart:io';

class Inputclass {
  static int bookId = 0;
  static int userId = 0;

  void run() {
    String? myInput = stdin.readLineSync();
    print('$myInput');
  }
}

void main() {
  print('책입력 하실건가요? Y/N');
  String? inputBookYn = stdin.readLineSync();
  while (inputBookYn == null ||
      inputBookYn == '' ||
      inputBookYn.toUpperCase() != 'Y' ||
      inputBookYn.toUpperCase() != 'N') {
    print('다시 입력 하세요 책입력 하실 건가요 Y/N');
    String? inputYn = stdin.readLineSync();
  }

  if (inputBookYn.toUpperCase() == 'Y') {
    print('책 제목을 입력하려하세요');
    String? title = stdin.readLineSync();
    print('출간일 입력하세요');
    String? publishDate = stdin.readLineSync();
  }

  print('기존회원이신가요? Y/N');
  print('');
  String? inputUserYn = stdin.readLineSync();
  while (inputUserYn == null ||
      inputUserYn == '' ||
      inputUserYn.toUpperCase() != 'Y' ||
      inputUserYn.toUpperCase() != 'N') {
    print('다시 입력 하세요 기존회원이산가요 Y/N');
    inputUserYn = stdin.readLineSync();
  }

  if (inputUserYn.toUpperCase() == 'N') {
    print('회원이름을 입력하려하세요');
    String? name = stdin.readLineSync();
    print('출간일 입력하세요');
    // String?  = stdin.readLineSync();//
    String? publishDate = stdin.readLineSync();
  }

  Inputclass inputclass = Inputclass();
  inputclass.run();
}
