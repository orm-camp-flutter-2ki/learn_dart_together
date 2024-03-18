class Word {
  final String _word;
  final String vowels = 'aeiou';

  Word(this._word);

  bool isVowel(int i) {
    if (i >= 0 && i < _word.length) {
      // 문자열이 단어의 길이를 초과하지 않도록 if 사용
      return vowels.contains(_word[i].toLowerCase()); // 소문자로 변환하면서 모음을 포함확인
    }
    return false;
  }
}
