class Word {
  final String _vowels = 'aeiou';
  String word = '';

  Word(this.word);

  bool isVowel(int i) {
    return _vowels.contains(word.substring(i - 1, i).toLowerCase());
  }

  bool isConsonant(int i) {
    return !_vowels.contains(word.substring(i - 1, i).toLowerCase());
  }
}
