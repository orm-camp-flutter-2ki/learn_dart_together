class TopLevel {
  bool word(String text) {
    //   소문자 바꾸고 , 공백 없애버려
    String wordset = '';
    try {
      wordset = text.toLowerCase().trim();
    } catch (e) {
      print('회문이 아닙니다. 오류메세지 :$e');
    }

    return wordset == wordset.split('').reversed.join('');
  }
}

///
///split("")은 문자 1개씩 분리하여 리스트로 변환
// reversed는 리스트의 저장 순서를 역순으로 변경, Iterable 리턴
// join()은 리스트의 요소들을 하나의 문자열로 합치고 리턴
