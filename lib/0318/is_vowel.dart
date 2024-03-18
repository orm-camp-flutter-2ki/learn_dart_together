class Word {
  final String _word;

  Word({required String word}) : _word = word;

  /// 자음들 리스트, 소문자와 자음을 담았다.
  final Set<String> _vowelsList = {'a', 'e', 'i', 'u', 'o'};

  bool isVowel(int i) {
    if (i < 0 || i > _word.length) {
      print('글자 수 범위가 아닙니다. 다시 입력해주세요');
      return false;
    }

    String wordValue = _word[i].toLowerCase();
    return _vowelsList.contains(wordValue);
  }
}

void main() {}
