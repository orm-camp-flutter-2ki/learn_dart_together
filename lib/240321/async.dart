import 'dart:io';

Future<void> createCsvFile() async {
  //파일생성
  final data = [
    ['1', '홍길동', '30'],
    ['2', '한석봉', '20'],
  ];
  final file = File('sample.csv');
  await file.writeAsString(data.map((row) => row.join(',')).join('\n'));
}

Future<void> replaceText() async {
  //파일수정
  final sourceFile = File('sample1.csv');
  final targetFile = File('sample_copy.csv');

  final sourceContent = await sourceFile.readAsString();

  final replacedContent = sourceContent.replaceAll('한석봉', '김석봉');

  await targetFile.writeAsString(replacedContent);
}

void main() async {
  try {
    await replaceText();
    final replacedContent = await File('sample_copy.csv').readAsString();
    print(replacedContent);
    print('파일수정완료');
  } on FileSystemException catch (e) {
    if (e.osError == 2) {
      print('파일을 찾을 수 없습니다.');
    } else {
      print('파일 시스템 오류: ${e.message}');
    }
  } catch (e) {
    print('오류 : $e');
  }
}

// Future<void> main() async {
//   try {
//     await createCsvFile();
//     print('CSV파일 생성완료!');
//   } catch(e) {
//     print('오류발생 : $e');
//   }
// }
