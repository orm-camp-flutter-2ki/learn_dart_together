class Word {
  String word = '';

  Word(this.word);

  bool isVowel(int i) {
   final char = word.substring(i, i + 1);

   return ['a', 'e', 'i', 'o', 'u'].contains(char.toLowerCase());
  }

  bool isConsonant(int i) {
    final char = word.substring(i, i + 1);

    return !['a', 'e', 'i', 'o', 'u'].contains(char.toLowerCase());

  }
}
