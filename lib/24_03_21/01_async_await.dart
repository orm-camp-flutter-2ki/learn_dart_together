import 'dart:io';

Future<void> replaceCSV() async {   // 비동기 함수 replaceCSV를 선언
  try {
    String csvContent = await File('sample.csv')
        .readAsString(); // 'sample.csv' 파일을 읽어와서 파일 내용을 문자열로 저장

    csvContent =
        csvContent.replaceAll('한석봉', '김석봉'); // '한석봉'을 '김석봉'으로 바꿈

    await File('sample_copy.csv')
        .writeAsString(csvContent); // 수정된 내용을 'sample_copy.csv' 파일로 저장

    print('수정 완료'); // 파일 수정이 완료되면 '수정 완료' 메시지 출력
  } catch (e) {    // 오류가 발생한 경우
    print('오류 발생: $e'); // 발생한 오류를 출력
  }
}

void main() {
  replaceCSV();
}
