import 'dart:io';

void main (){

  final myFile = File('sample.csv');

  void copy(String source, String target) {
    final sourceFile = File('sample.csv');
    final targetFile = File('sample_copy.csv');

    File(source).copySync(target);
}

// sample.csv 파일을 읽어와서 “한석봉" 이라는 문자열이 있는지 찾고,
// 있다면 sample_copy.csv 파일에 “김석봉"으로 수정하는 함수를 작성하시오.
// (async - await 사용할 것)