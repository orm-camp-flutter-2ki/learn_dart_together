class Word {
  String word = '';
  String _vowels = 'aeiou';
  Word(this.word);

  bool isVowel(int i) {
    return _vowels.contains(word.substring(i - 1, i).toLowerCase());
  }

  bool isConsonant(int i) {
    return !_vowels.contains(word.substring(i - 1, i).toLowerCase());
  }
}
