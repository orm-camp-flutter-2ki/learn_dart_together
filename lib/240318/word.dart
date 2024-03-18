class Word {
  String word;

  Word({required this.word});

  bool isVowel(int i) => 'aeiou'.contains(word[i].toLowerCase()); //모음, 다 소문자로 변환하고 비교

  bool isConsonant(int i) {
    //자음
    var target = word[i].toLowerCase().codeUnitAt(0);
    return ((target >= 'a'.codeUnitAt(0) && target <= 'z'.codeUnitAt(0))) &&
        (!isVowel(1)); //유니코드로 알파벳 추리기
  }
}

void main() {
  // print('aeieghoi'.contains('e'));

  Word word = Word(word:'lovable');
  bool result = word.isVowel(0); //첫글자 모음이냐 (ㄴㄴ)
  //bool result2 = word.isConsonant(1); //두번째 글자 자음이냐 (ㄴㄴ)

  print(result);
 // print(result2);
}
