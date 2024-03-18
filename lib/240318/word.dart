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
}
