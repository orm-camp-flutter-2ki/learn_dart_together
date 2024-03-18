class Word {
  String word = '';

  bool isVowel(int i) {
    String letter = word.substring(i, i + 1);

    if (letter == 'a') {
      return true;
    } else if (letter == 'e') {
      return true;
    } else if (letter == 'i') {
      return true;
    } else if (letter == 'o') {
      return true;
    } else if (letter == 'u') {
      return true;
    } else {
      return false;
    }
  }
  bool isConsonant(int i){
    if(this.isVowel(i)==true){
      return false;
    }else{
      return true;
    }
  }
}

