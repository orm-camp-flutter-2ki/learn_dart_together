class RegularExpression {
  List<String> getNumsString() {
    StringBuffer stringBuffer = StringBuffer('');

    for (int i = 1; i <= 100; i++) {
      if (i == 100) {
        stringBuffer.write(i);
        break;
      }
      stringBuffer.write('$i,');
    }
    String str = stringBuffer.toString();

    List<String> numsString = str.split(RegExp(r','));
    return numsString;
  }

  String getPath(String path, String fileName) {
    if (RegExp(r'\\$').hasMatch(path)) {
      return path + fileName;
    }
    return '$path\\$fileName';
  }

  bool isPerfectString1(String str) {
    if (RegExp(r'').hasMatch(str)) {
      return true;
    } else {
      return false;
    }
  }

  bool isPerfectString2(String str) {
    if (RegExp(r'^A[0-9][0-9|\s]{0,1}').hasMatch(str)) {
      return true;
    } else {
      return false;
    }
  }

  bool isPerfectString3(String str) {
    if (RegExp(r'^U[A-Z]{3}').hasMatch(str)) {
      return true;
    } else {
      return false;
    }
  }
}


void main() {
  print(RegularExpression().getNumsString());
  print(RegularExpression().getPath('C:dev\\', 'abc.txt'));
  print(RegularExpression().isPerfectString1('dsafdsf'));
  print(RegularExpression().isPerfectString2('A22'));
  print(RegularExpression().isPerfectString3('URDE'));
}