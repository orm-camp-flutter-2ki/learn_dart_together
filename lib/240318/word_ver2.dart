class WordVer2 {
  String word;

  WordVer2(this.word);

  bool isVowel(int i) {
    String letter = word[i].toLowerCase(); // 소문자변경
    return 'aeiou'.contains(letter); // letter에 aeiou 있는지 확인 쪼개서 확인하는 방법
  }

  bool isConsonant(int i) {
    String letter = word[i].toLowerCase(); // 소문자변경
    return !'aeiou'.contains(letter); // letter에 aeiou 있는지 확인 쪼개서 확인하는 방법
  }
}
