class Word {
  final String _word;

  Word({required word}) : _word = word;

  final vowels = ['a', 'e', 'i', 'o', 'u'];

  bool isVowel(int i) {
    return vowels.contains(_word[i].toLowerCase());
  }

  bool isConsonant(int i) {
    return !vowels.contains(_word[i].toLowerCase());
  }
}
