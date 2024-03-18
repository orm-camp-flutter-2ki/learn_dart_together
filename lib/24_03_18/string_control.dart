// i 번째 글자가 모음인지 알려주는 isVowel() 함수를 완성하시오
// 영어에서의 모음은 a, e, i, o, u 다섯가지이다.
//
class Word {
  String word;

  Word(this.word);

  bool isVowel(int i) {
    if (i > word.length) {
      throw Exception('입력값이 글자 길이보다 큽니다.');
    }

    int beforeLetter = (i - 1) >= 0 ? (i - 1) : 0;

    String letter = word.substring(beforeLetter, i);
    String vowel = 'aeiou';

    return vowel.contains(letter);
  }

  // i 번째 글자가 자음인지 알려주는 isConsonant() 함수를 완성하시오
  bool isConsonant(int i) {
    if (i > word.length) {
      throw Exception('입력값이 글자 길이보다 큽니다.');
    }

    int beforeLetter = (i - 1) >= 0 ? (i - 1) : 0;

    String letter = word.substring(beforeLetter, i);
    String vowel = 'aeiou';

    return !vowel.contains(letter);
  }
}
