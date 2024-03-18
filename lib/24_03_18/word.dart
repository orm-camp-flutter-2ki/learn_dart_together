class Word {
  String word = '';
  List<String> vowel = ['a', 'e', 'i', 'o', 'u'];

  bool isVowel(int i) {
    return vowel.contains(word[i].toLowerCase());
  }

  bool isConsonant(int i) {
    if (word[i].toLowerCase().codeUnits[0] <= 97 &&
        word[i].toLowerCase().codeUnits[0] >= 122 &&
        !vowel.contains(word[i])) {
      return true;
    }

    return false;
  }
}
