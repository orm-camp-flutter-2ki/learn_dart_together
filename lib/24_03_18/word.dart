class Word {
  String word;

  Word({required this.word});

  bool isVowel(int i) {
    final List<String> vowel = ['a','e','i','o','u'];
    final char = word.substring(i, i + 1).toLowerCase();

    if (vowel.contains(char)) {
      return true;
    }

    return false;
  }

  bool isConsonant(int i) {
    if (isVowel(i)) {
      return false;
    }

    return true;
  }
}