class Word {
  String _word;
  final List<String> _vowel = ['a', 'e', 'i', 'o', 'u'];

  Word({required String word}) : _word = word;

  String get word => _word;

  set word(String value) {
    _word = value;
  }

  bool isVowel(int i) {
    return _vowel.contains(_word[i].toLowerCase());
  }

  bool isConsonant(int i) {
    if (_word[i].toLowerCase().codeUnits[0] >= 97 &&
        _word[i].toLowerCase().codeUnits[0] <= 122 &&
        !_vowel.contains(_word[i].toLowerCase())) {
      return true;
    }

    return false;
  }
}
