class Word {
  String word;

  Word({required this.word});

  bool isVowel(int i) {
    String char = word.substring(i, i + 1);
    return 'aeiou'.contains(char);
  }
}