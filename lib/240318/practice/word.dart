const vowels = ['a', 'e', 'i', 'o', 'u'];

class Word {
  String word = '';

  bool isVowel(int i) {
    int index;
    if (i >= 0) { // i 가 양수일 때
      index = i;
    } else { // i 가 음수일 때
      if (i.abs() <= word.length) { // i의 절대값이 문자열의 길이보다 같거나 작을 때
        index = word.length + i;
      } else { // i의 절대값이 문자열의 길이보다 클 때
        index = word.length - (i.abs() % word.length);
      }
    }

    return vowels.contains(word[index]);
  }
}
