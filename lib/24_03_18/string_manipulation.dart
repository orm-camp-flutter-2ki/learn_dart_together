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

  bool isConsonant(int i) {
    var target = word[i].toLowerCase().codeUnitAt(0);
    return (!isVowel(i)) &&
        ((target >= 'a'.codeUnitAt(0) && target <= 'z'.codeUnitAt(0)));
  }
}
