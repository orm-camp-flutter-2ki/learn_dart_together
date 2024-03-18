// enum VowelList { a, e, i, u, o }

class Word {
  String word;

  Word({required this.word});

  /// 다른 분들 대문자 소문자일 때도... 비교....
  /// 특정 값이라고 생각해 swhich를 사용했는데... 중복 코드가 많아서 if나 다른 것으로 고치는게 나을 것 같다.
    bool isVowel(int i) {
      switch (word[i]) {
        case 'a':
          return word.substring(i, i + 1) == 'a';
        case 'e':
          return word.substring(i, i + 1) == 'e';
        case 'i':
          return word.substring(i, i + 1) == 'i';
        case 'o':
          return word.substring(i, i + 1) == 'o';
        case 'u':
          return word.substring(i, i + 1) == 'u';
        default:
          print('$word의 $i번째 글자는 모음이 아닙니다.');
          return false;
    }
  }
}

void main () {

}
