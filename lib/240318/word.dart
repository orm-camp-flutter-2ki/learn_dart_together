class Word {
  String word = '';

  Word(this.word);

  bool isVowel(int i) {
    switch(word.substring(i - 1, i)) {
      case 'a':
      case 'e':
      case 'i':
      case 'o':
      case 'u':
        return true;
      default:
        return false;
    }
  }
}
