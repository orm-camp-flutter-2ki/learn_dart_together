class Word {
  String word;
  Word(this.word);

  bool isVowel(int i) {
    String character = word.substring(i, i + 1).toLowerCase();
    return character == 'a' ||
        character == 'e' ||
        character == 'i' ||
        character == 'o' ||
        character == 'u';
  }

  bool isConsonant(int i) {
    String character = word.substring(i, i + 1).toLowerCase();
    return !(character == 'a' &&
        character == 'e' ||
        character == 'i' ||
        character == 'o' ||
        character == 'u');
  }
}

void main() {
  Word word = Word('Hello');
  print('주어진 문자의 개수는 ${word.word.length} 개입니다.');

  for (int i = 0; i < word.word.length; i++) {
    if (word.isVowel(i) == true) {
      print('${i+1}번째 글자는 모음');
    }
    if (word.isConsonant(i) == true) {
      print('${i+1}번째 글자는 자음');
    }
  }
}