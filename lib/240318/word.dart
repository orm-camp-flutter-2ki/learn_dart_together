class Word {
  String word = '';

  bool isVowel(int i) {
    String moem = word.substring(i, i + 1).toLowerCase();
    return moem == 'a' ||
        moem == 'e' ||
        moem == 'i' ||
        moem == 'o' ||
        moem == 'u';
  }

  bool isConsonant(int i) {
    String jaem = word.substring(i, i + 1).toLowerCase();
    return jaem != 'a' &&
        jaem != 'e' &&
        jaem != 'i' &&
        jaem != 'o' &&
        jaem != 'u';
  }
