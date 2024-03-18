class Word {
  final String _word;
  final String vowel = 'aeiou';

  Word(this._word);
  // _word의 i 인덱스의 글자가 모음인지 확인
  bool isVowel(int i) {
    // aeiou가 _word의 i 인덱스 글자를 포함하고 있는지 확인
    if (vowel.contains(_word.substring(i, i + 1))) {
      return true;
    }
    return false;
  }

  // _word의 i 인덱스의 글자가 자음인지 확인
  bool isConsonant(int i) {
    // aeiou가 _word의 i 인덱스 글자를 포함하고 있지 않은지 확인
    if (!vowel.contains(_word.substring(i, i + 1))) {
      return true;
    }
    return false;
  }
}
