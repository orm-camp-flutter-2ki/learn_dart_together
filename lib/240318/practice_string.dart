// i 번째 글자가 모음인지 알려주는 isVowel() 함수를 완성하시오
// i 번째 글자가 자음인지 알려주는 isConsonant() 함수를 완성하시오
// 영어 모음: a, e, i, o, u
class Word {
  String word = '';

  Word(this.word);

  // 모음
  bool isVowel(int i) {
    if (i >= word.length) {
      return false;
    }
    String value = word.substring(i, i + 1).toLowerCase();
    if (value == 'a' ||
        value == 'e' ||
        value == 'i' ||
        value == 'o' ||
        value == 'u') {
      return true;
    }
    return false;
  }

  // 자음
  bool isConsonant(int i) {
    if (i >= word.length) {
      return false;
    }

    String value = word[i].toLowerCase();

    return (value != 'a' &&
        value != 'e' &&
        value != 'i' &&
        value != 'o' &&
        value != 'u');
  }
}

void main() {
  Word word = Word('chair');
  bool result = word.isVowel(5);
  bool result2 = word.isConsonant(5);
  print(result);
  print(result2);
}
