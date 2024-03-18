class Word {
  final String _word;
  final String vowels = 'aeiou';

  Word(this._word);

  bool isVowel(int i) {
    if (i >= 0 && i < _word.length) {
      return vowels.contains(_word[i].toLowerCase());
    }
    return false;
  }

  // 모음이 아님 = 자음
  bool isConsonant(int i) {
    if (i >= 0 && i < _word.length) {
      return !isVowel(i);
    }
    return false;
  }
}
