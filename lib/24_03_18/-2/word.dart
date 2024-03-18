class Word {
  String _word = '';

  Word({required String word}) : _word = word;

  bool isVowel(int i) {
    if (i >= _word.length || i < 0) throw _indexOutOfRangeError();
    return _isVowelCharacter(_word.substring(i, i + 1));
  }

  bool isConsonant(int i) {
    if (i >= _word.length || i < 0) throw _indexOutOfRangeError();
    return _isConsonantCharacter(_word.substring(i, i + 1));
  }

  bool _isVowelCharacter(String character) {
    return switch (character.toLowerCase()) {
      'a' || 'e' || 'i' || 'o' || 'u' => true,
      _ => false
    };
  }

  bool _isConsonantCharacter(String character) {
    return !_isVowelCharacter(character);
  }

  RangeError _indexOutOfRangeError() {
    return RangeError('Index out of range');
  }
}
