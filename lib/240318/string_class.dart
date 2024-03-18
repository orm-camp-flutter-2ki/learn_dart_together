class Word {
  String word = '';

  bool isVowel(int i) {
    if (i < 0 || i >= word.length) {
      return false;
    }

    // i 번째 문자를 추출
    final char = word.substring(i, i + 1);

    return ['a', 'e', 'i', 'o', 'u'].contains(char.toLowerCase());
  }
}

void main(){
  final word = Word();
  word.word = 'Hello, world!';

  for (var i = 0; i < word.word.length; i++) {
    if (word.isVowel(i)) {
      print('$i 번째 문자는 모음입니다.');
    } else {
      print('$i 번째 문자는 자음입니다.');
    }
  }
}