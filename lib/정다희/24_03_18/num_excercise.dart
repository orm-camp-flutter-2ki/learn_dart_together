

class Word {
  String _word = '';
  //왜 const 는 안됨?
  // const = 컴파일 시간의 상수. 그 값은 프로그램이 실행되는 동안 변경될 수 없음
  // final = 실행 시간에 결정되는 값. 런타임에 할당되지만 할당 후 변경될 수 없음.
  // word 클래스의 인스턴스가 실행될때마다 vowels 가 새로 생성 되어야 한다는것
  // const 로 선언된 변수는 컴파일 시간에 그 값에 결정 되어야 하며, 모든 인스턴스에서 동일한 값
  // 따라서 인스턴스값별로 다른값을 가질 수 있는 멤버 변수에 const 사용 허용 x
  //or static const로 선언한는것이 더 적절
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

