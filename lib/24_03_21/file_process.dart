import 'dart:io';
import 'dart:async';

// 비동기 함수 = findHim 선언
Future<void> findHim() async {
  // 예외처리를 위한 try-catch
  try {
    final file = File('lib/24_03_21/sample.csv');
    // sample.csv를 file 변수에 삽입

    if (await file.exists()) {
      // file(sample.csv)가 있다면

      final name = await file.readAsString();
      // readAsString으로 내용을 name에 저장

      final change = name.replaceAll('한석봉', '김석봉');
      // '한석봉' -> '김석봉' 변경 내용을 change 에 저장

      final copyFile = File('lib/24_03_21/sample_copy.csv');
      // sample_copy.csv를 copyFile 변수에 삽입

      await copyFile.writeAsString(change);
      // 변경내용(change)을 sample_copy.csv(copyFile)에 기록

      print('과제 Done!');
      // 잘 되었을 때
    } else {
      print('그런거 없음');
      // 파일 없으면
    }
  } catch (e) {
    // 작업 중 오류
    print('파일 이상');
  }
}

void main() async {
  await findHim();
}
