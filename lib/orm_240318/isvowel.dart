class Word {
  String word = '';

  Word(this.word);

  bool isVowel(int i) {
    final List<String> vowel = ['a', 'e', 'i', 'o', 'u'];
    String char = word.substring(i, i + 1);

    if (vowel.contains(char)) {
      return true;
    }
    return false;
  }
}
