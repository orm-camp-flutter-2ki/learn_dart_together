class Word {
  String word = '';

  Word(this.word);

  bool isVowel(int i) {
    String lowCaseWord = word.toLowerCase();
    return lowCaseWord.substring(i, i + 1) == 'a';
  }

  bool isConsonant(int i) {
    String lowCaseWord = word.toLowerCase();
    return lowCaseWord.substring(i, i + 1) != 'a';
  }
}

void main() {
  Word word = Word('amazing');
  int i = 1;
  if (word.isVowel(i)) {
    print('${i + 1}번째 알파벳은 모음 입니다.');
  } else if (word.isConsonant(i)) {
    print('${i + 1}번째 알파벳은 자음 입니다.');
  }
}
