class Word {
  String word = '';

  bool isVowel(int i) {
    if (i >= word.length) return false;
    return switch (word.substring(i, i + 1)) {
      'a' || 'e' || 'i' || 'o' || 'u' => true,
      _ => false
    };
  }
}
