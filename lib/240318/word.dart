class Word {
  String word;

  Word(this.word);

  bool isVowel(int i) {
    String character = word[i].toLowerCase();
    return ['a', 'e', 'i', 'o', 'u'].contains(character);
  }
}
