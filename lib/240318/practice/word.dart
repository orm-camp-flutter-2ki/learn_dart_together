const vowels = ['a', 'e', 'i', 'o', 'u'];

class Word {
  String word = '';

  bool isVowel(int i) {
    return vowels
        .contains(word[_normalizeNegativeIndex(word.length, i)].toLowerCase());
  }

  bool isConsonant(int i) => !isVowel(i);

  /// 음수 인덱스가 주어졌을 때 일반화하는 함수
  int _normalizeNegativeIndex(int length, int index) {
    int normalizeIndex;

    if (index >= 0) {
      // i 가 양수일 때
      normalizeIndex = index;
    } else {
      // i 가 음수일 때
      if (index.abs() <= length) {
        // i의 절대값이 문자열의 길이보다 같거나 작을 때
        normalizeIndex = length + index;
      } else {
        // i의 절대값이 문자열의 길이보다 클 때
        normalizeIndex = length - (index.abs() % length);
      }
    }

    return normalizeIndex;
  }
}
