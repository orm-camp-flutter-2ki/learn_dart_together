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
}

void main() {
  Word word = Word('Hello world');
  print(word.isVowel(1)); // true를 반환
  print(word.isVowel(3)); // false를 반환

}
