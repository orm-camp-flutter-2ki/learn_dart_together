// enum VowelList { a, e, i, u, o }

class Word {
  String word;

  Word({required this.word});

  Set<String> vowelList = {'a', 'e', 'i', 'u', 'o', 'A', 'E', 'I', 'U', 'O'};

  /// 다른 분들 대문자 소문자일 때도... 비교....
  /// 특정 값이라고 생각해 swhich를 사용했는데... 중복 코드가 많아서 if나 다른 것으로 고치는게 나을 것 같다.
  /// 길이도 고려!
  bool isVowel(int i) {
    if(i > word.length) {
      print('다시 입력해주세요');
      return false;
    }

    return vowelList.contains(word[i]);

    if (word[i]){}

    if (word[i] == 'a' ||
        word[i] == 'e' ||
        word[i] == 'i' ||
        word[i] == 'u' ||
        word[i] == 'o') {}
  }
}

void main() {}
