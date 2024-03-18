class IsConsonant {
  final String _word;

  IsConsonant({required String word}) : _word = word.toLowerCase();

  final Set<String> _vowelsList = {'a', 'e', 'i', 'u', 'o'};

  bool isConsonant(int i) {
    if (i < 0 || i > _word.length) {
      print('글자 수 범위가 아닙니다. 다시 입력해주세요');
      return false;
    }

    /// ascii 10진법을 활용
    if (_word.codeUnitAt(i) < 97 ||
        _word.codeUnitAt(i) > 122 ||
        _vowelsList.contains(_word[i])) {
      return false;
    }

    return true;
  }
}

void main() {
  // String test = 'awdfs';
  // print(test.codeUnitAt(4));
  // test.is
  IsConsonant test = IsConsonant(word: 'A');
  print(test._word[0]);
  print(test.isConsonant(0));
  IsConsonant test2 = IsConsonant(word: 'b');
  print(test2.isConsonant(0));
}
