class Word {
  String word = '';

  bool isVowel(int i) {
    if (i >= word.length) return false;
    return _isVowelCharacter(word.substring(i, i + 1));
  }

  bool isConsonant(int i) {
    if (i >= word.length) return false;
    return _isConsonantCharacter(word.substring(i, i + 1));
  }

  bool _isVowelCharacter(String character) {
    return switch (character) {
      'a' || 'e' || 'i' || 'o' || 'u' => true,
      _ => false
    };
  }

  bool _isConsonantCharacter(String character) {
    return !_isVowelCharacter(character);
  }
}
