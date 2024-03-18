// i 번째 글자가 모음인지 알려주는 isVowel() 함수를 완성하시오
// 영어 모음: a, e, i, o, u
class Word {
  String word = '';

  Word(this.word);

  bool isVowel(int i) {
    if( i > word.length ) {
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
}

void main() {
  Word word = Word('word');
  bool result = word.isVowel(0);
  print(result);
}
