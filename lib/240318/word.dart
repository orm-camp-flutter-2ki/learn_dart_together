class Word {
  final String _word;
  final String vowel = ('aeiou');

  Word(this._word);

  bool isVowel(int i) {
    final List<String> splited = vowel.split(',');

    if (vowel.contains(_word.substring(i, i + 1))) {
      return true;
    }
    return false;
  }

  bool isConsonant(int i) {
    if (!vowel.contains(_word.substring(i, i + 1))) {
      return true;
    }
    return false;
  }
}

void main() {
  String word = 'tomato';
  String word1 = 'apple';
  Word w = Word(word1);
  for (int i = 0; i < word1.length; i++) {
    print('$i는 모음=> ${w.isConsonant(i)}');
  }
}
