class Word {
  String word;

  Word(this.word);

  bool isVowel(int i) {
    String letter = word[i].toLowerCase();
    return 'aeiou'.contains(letter);
  }

  bool isConsonant(int i) {
    String letter = word[i].toLowerCase();
    return !'aeiou'.contains(letter);
  }
}

void main() {
  Word word = Word('string');
  print(word.isVowel(2));
  print(word.isConsonant(2));
}
