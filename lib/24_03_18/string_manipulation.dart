class Word {
  String word = '';

  bool isVowel(int i) {
    var target = word[i].toLowerCase();
    return target == 'a' ||
        target == 'e' ||
        target == 'i' ||
        target == 'o' ||
        target == 'u';
  }
}