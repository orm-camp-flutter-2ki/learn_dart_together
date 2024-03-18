class Word {
  String word = '';

  bool isVowel(int i) {
    return word.substring(i, i + 1) == 'a';
  }
}