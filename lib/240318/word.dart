class Word {
  String word = '';

  bool isVowel(int i) {
    String moem = word.substring(i, i + 1);
    return moem == 'a' ||
        moem == 'e' ||
        moem == 'i' ||
        moem == 'o' ||
        moem == 'u' ||
        moem == 'A' ||
        moem == 'E' ||
        moem == 'I' ||
        moem == 'O' ||
        moem == 'U';
  }

  bool isConsonant(int i) {
    String jaem = word.substring(i, i + 1);
    return jaem != 'a' &&
        jaem != 'e' &&
        jaem != 'i' &&
        jaem != 'o' &&
        jaem != 'u' &&
        jaem != 'A' &&
        jaem != 'E' &&
        jaem != 'I' &&
        jaem != 'O' &&
        jaem != 'U';
  }
}
