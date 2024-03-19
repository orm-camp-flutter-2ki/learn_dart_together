class Word {
  String word;
  Set vowel = {'a', 'e', 'i', 'o', 'u'};

  Word(this.word);

  bool isVowel(int i) {
    var findVowel = vowel.contains(word[i - 1]);
    return findVowel;
  }

  bool isConsonant(int i) {
    return !isVowel(i);
  }
}
