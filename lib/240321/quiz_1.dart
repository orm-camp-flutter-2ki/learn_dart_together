import 'dart:io';

Future<void> editFile() async {
  try {
    final file = File('lib/240321/sample.csv');
    final editFile = File('lib/240321/sample_copy.csv'); //만들어진 파일에 내용이 카피가 됐다.
    String contents = await file.readAsString(); //awiat를 넣어줘야지 Future을 벗길 수 있다.

    if (contents.contains('한석봉')) {
      final editContents = contents.replaceAll('한석봉', '김석봉');
      await editFile.writeAsString(editContents);
    } else {
      print('한석봉을 찾을 수 없습니다.');
    }
  } catch (error) {
    print('파일을 찾을 수 없습니다.');
  }
}

void main() async {
  await editFile(); //비동기 함수를 위에서 선언했으니 메인에서도 써야 함
}

// sample.csv 파일을 읽어와서 “한석봉" 이라는 문자열이 있는지 찾고, 있다면 sample_copy.csv 파일에 “김석봉"으로 수정하는 함수를 작성하시오.
// (async - await 사용할 것)
