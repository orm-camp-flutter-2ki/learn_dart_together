class Word {
  String word = '';
  List<String> vowel = ['a', 'e', 'i', 'o', 'u'];

  bool isVowel(int i) {
    return vowel.contains(word[i]);
  }
}
