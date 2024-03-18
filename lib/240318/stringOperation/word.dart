class Word {
  String word = '';

  String vowel = 'aeiou';

  bool isVowel(int i) {
    String char = word.substring(i, i + 1);

    if (vowel.indexOf(char) >= 0) {
      return true;
    }
    return false;
  }

  bool isConsonant(int i) {
    String char = word.substring(i, i + 1);

    if (vowel.indexOf(char) < 0) {
      return true;
    }
    return false;
  }
}
