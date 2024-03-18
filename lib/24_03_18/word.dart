class Word {
  String word = '';
  List<String> vowel = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'];

  bool isVowel(int i) {
    return vowel.contains(word[i]);
  }

  bool isConsonant(int i) {
    if (!vowel.contains(word[i])) {
      return true;
    }

    return false;
  }
}
