// 실습 1
// i 번째 글자가 모음인지 알려주는 isVowel() 함수를 완성하시오
// 영어에서의 모음은 a, e, i, o, u 다섯가지이다

class Word {
  String word = '';

  Word(this.word);

  // List<String> vowel = ['a', 'e', 'i', 'o', 'u'];

  bool isVowel(int i) {
    // 주어진 인덱스의 글자를 소문자로 변환함
    String char = word.substring(i, i + 1).toLowerCase();
    switch (char) {
      case 'a':
      case 'e':
      case 'i':
      case 'o':
      case 'u':
        return true;
      default:
        return false;
    }
  }

  // 실습 2
  // i 번째 글자가 자음인지 알려주는 isConsonant() 함수를 완성하시오
  bool isConsonant(int i) {
    String char = word.substring(i, i + 1).toLowerCase();
    List<String> vowels = ['a', 'e', 'i', 'o', 'u'];
    return !vowels.contains(char); // vowels이 포함이 안된값을 찾기위해 '!'사용
  }
}

void main() {
  Word word = Word('Hello world');
  // print(word.isVowel(1)); // 결괏값이 'e'라서 true를 반환
  // print(word.isVowel(3)); // 결괏값이 'l'이라서 false를 반환
  print(word.isConsonant(0)); // 결괏밧이 'h'라서 true를 반환
  print(word.isConsonant(1)); // 결괏값이 'e'라서 false를 반환
}
