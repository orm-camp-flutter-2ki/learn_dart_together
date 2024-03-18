void main() {
  Word beautiful = Word('beautiful');
  for (int i = 1; i <= beautiful.word.length; i++) {
    print('${beautiful.word[i - 1]}이(가) 모음 인가? : ${beautiful.isVowel(i)}');
    beautiful.isVowel(i);
  }
  for (int i = 1; i <= beautiful.word.length; i++) {
    print('${beautiful.word[i - 1]}이(가) 자음 인가? : ${beautiful.isConsonant(i)}');
    beautiful.isConsonant(i);
  }
}

class Word {
  String word;
  Set vowel = {'a', 'e', 'i', 'o', 'u'};

  Word(this.word);

  bool isVowel(int i) {
    var findVowel = vowel.contains(word[i]);
    return findVowel;
  }

  bool isConsonant(int i) {
    var findConsonant = !(vowel.contains(word[i]));
    return findConsonant;
  }
}
