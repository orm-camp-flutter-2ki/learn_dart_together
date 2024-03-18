class Word {
  String word = ' ';

  bool isVowel(int i) {

    String oneLetter = word.substring(i, i + 1).toLowerCase();

    switch (oneLetter) {
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

  bool isConsonant(int i) {

    switch (word.substring(i, i+1)) {
      case 'a':
      case 'e':
      case 'i':
      case 'o':
      case 'u':
        return false;
      default:
        return true;
    }
  }
}

void main() {
  Word testWord = Word();
  testWord.word = "metallica";

  int i = 0;
  print("$i번 index는 모음인가? ${testWord.isVowel(i)}");
  print("$i번 index는 자음인가? ${testWord.isConsonant(i)}");
}
