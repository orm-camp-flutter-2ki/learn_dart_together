class Word {
  String word = '';

  String _vowel = 'aeiou';

  bool isVowel(int i) {
    String char = word.substring(i, i + 1);

    if (_vowel.indexOf(char) >= 0) {
      return true;
    }
    return false;
  }

  bool isConsonant(int i) {
    String char = word.substring(i, i + 1);

    if (_vowel.indexOf(char) < 0) {
      return true;
    }
    return false;
  }
}
