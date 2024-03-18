class Word {
  String word;
  Word(this.word);

  bool isVowel(int i) {
    String character = word.substring(i, i + 1).toLowerCase();
    return character == 'a' ||
        character == 'e' ||
        character == 'i' ||
        character == 'o' ||
        character == 'u';
  }

  bool isConsonant(int i) {
    String character = word.substring(i, i + 1).toLowerCase();
    return !(character == 'a' ||
        character == 'e' ||
        character == 'i' ||
        character == 'o' ||
        character == 'u');
  }
}