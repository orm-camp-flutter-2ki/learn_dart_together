class Word {

  String word;

  Word(this.word);

  bool isVowel(int i) {
    Set<String> set = {'a', 'e', 'i', 'o', 'u'};
    return set.contains(word[i].toLowerCase());
  }
}