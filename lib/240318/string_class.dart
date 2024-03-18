const vowels = ['a', 'e', 'i', 'o', 'u']

class Word {
  String word = '';
  Word(this.word);

  bool isVowel(int i) {
   final char = word.substring(i, i + 1);

   return vowels.contains(char.toLowerCase());
  }

  bool isConsonant(int i) {
    final char = word.substring(i, i + 1);

    return !vowels.contains(char.toLowerCase());

  }
}
