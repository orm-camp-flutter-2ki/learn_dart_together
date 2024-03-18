class Word {
  final String _word;
  final String vowel = ('aeiou');

  Word(this._word);

  bool isVowel(int i) {
    bool result = false;
    final List<String> splited = vowel.split(',');

    if (vowel.contains(_word.substring(i, i + 1))) {
      return true;
    }
    return false;
  }
}

void main() {
  String word = 'tomato';
  Word w = Word(word);
  for (int i = 0; i < word.length; i++) {
    print('$i는 모음=> ${w.isVowel(i)}');
  }
}
