class Word {

  Set<String> set = {'a', 'e', 'i', 'o', 'u'};
  String word;

  Word(this.word);

  bool isVowel(int i) {
    return set.contains(word[i].toLowerCase());
  }

  bool isConsonant(int i) {
    return !set.contains(word[i].toLowerCase());
  }
}