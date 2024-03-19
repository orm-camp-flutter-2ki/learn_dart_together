class Word {
  String word;

  Word(this.word);

  bool isVowel(int i) {
    // return 'aeiouAEIOU'.contains(word.substring(i, i + 1));
    return RegExp(r'[aeiouAEIOU]').hasMatch(word.substring(i, i + 1));
  }

  bool isConsonant(int i) => !isVowel(i);

// bool isVowel(int i) {
//   return word.substring(i, i + 1).toLowerCase() == 'a' ||
//       word.substring(i, i + 1).toLowerCase() == 'e' ||
//       word.substring(i, i + 1).toLowerCase() == 'i' ||
//       word.substring(i, i + 1).toLowerCase() == 'o' ||
//       word.substring(i, i + 1).toLowerCase() == 'u';
// }
}
