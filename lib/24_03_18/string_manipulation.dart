class Word {
  String word = '';

  bool isVowel(int i) {
    return word[i] == 'a' ||
        word[i] == 'e' ||
        word[i] == 'i' ||
        word[i] == 'o' ||
        word[i] == 'u';
  }
}
