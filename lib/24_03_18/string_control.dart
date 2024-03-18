// i 번째 글자가 모음인지 알려주는 isVowel() 함수를 완성하시오
// 영어에서의 모음은 a, e, i, o, u 다섯가지이다.

class Word {
  String word;

  Word(this.word);

  bool isVowel(int i) {
    final String vowel = 'aeiou';

    if (i > word.length) {
      throw Exception('입력값이 글자 길이보다 큽니다.');
    }

    // 방법 1
    return vowel.contains(word[i]);

    // 방법 2) substring() 써서 체크 해 보기
    // int afterLetter = (i + 1) < word.length ? (i + 1) : word.length;
    // String letter = word.substring(i, afterLetter);
    // return vowel.contains(letter);

    // 방법 3) 어떤 글자던 소문자로 바꿔서 확인하기
    // String letter = word.substring(i, afterLetter).toLowerCase();
    // return vowel.contains(letter);
  }

  // i 번째 글자가 자음인지 알려주는 isConsonant() 함수를 완성하시오
  bool isConsonant(int i) {
    List<String> vowels = ['a', 'e', 'i', 'o', 'u'];

    if (i > word.length) {
      throw Exception('입력값이 글자 길이보다 큽니다.');
    }

    for (String s in vowels) {
      if (s == word[i]) return false;
    }

    return true;
  }
}
