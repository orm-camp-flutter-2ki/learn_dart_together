class Word {
  String word;

  Word({required this.word});

  bool isVowel(int i) => 'aeiou'.contains(word[i].toLowerCase());

  bool isConsonant(int i) {
    var target = word[i].toLowerCase().codeUnitAt(0);
    return ((target >= 'a'.codeUnitAt(0) && target <= 'z'.codeUnitAt(0))) &&
        (!isVowel(i));
  }
}