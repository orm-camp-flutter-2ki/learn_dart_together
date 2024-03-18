

class Word {
  String _word = '';
  //왜 const 는 안됨?
  final vowels = { 'a', 'e', 'i', 'o', 'u'};
  Word({required word}) : _word = word  ;
  bool isVowel(int i) {
    if (i ==0){
      return false;
    }
    String character = _word[i-1].toLowerCase();

    return vowels.contains(character);
  }
  bool isConsonant(int i){
    // String character = word[i].toLowerCase();
    // const vowels = { 'a', 'e', 'i', 'o', 'u'};
    // return !vowels.contains(character);
    //
    return !isVowel(i);
  }
}

