import 'dart:async';
import 'dart:io';

// CSV 파일 경로 설정
String originalPath = 'lib/asynchronous_240321/sample.csv';
String copiedPath = 'lib/asynchronous_240321/sample_copy.csv';

Future<String> modifier() async {
// CSV 파일 읽기
  File originalFile = File(originalPath);

  try {
    String readString = await originalFile.readAsString();
    if (readString.contains('한석봉')) {
      await originalFile.copy(copiedPath);
      File copiedFile = File(copiedPath);
      String readString2 = await copiedFile.readAsString();
      readString2 = readString2.replaceAll('한석봉', '김석봉');
      await copiedFile.writeAsString(readString2); // 수정된 문자열을 파일에 씀
      return '한석봉을 김석봉으로 수정한 복사본 파일 생성';
    } else {
      return '한석봉이 발견되지 않았습니다.';
    }
  } catch (error) {
    return '오류 발생: $error';
  }
}

void main() async {
  String result = await modifier();
  print(result);
}

// sample.csv 파일을 읽어와서 “한석봉" 이라는 문자열이 있는지 찾고,
// 있다면 sample_copy.csv 파일에 “김석봉"으로 수정하는 함수를 작성하시오.
// (async - await 사용할 것)
