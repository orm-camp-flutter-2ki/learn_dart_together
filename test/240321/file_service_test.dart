import 'package:learn_dart_together/240321/file_service.dart';
import 'package:test/test.dart';

void main() {
  final fileService = FileService();
  test('파일 복사 테스트', () {
    fileService.replaceText(
        copyPath: 'test/240321/sample.csv',
        pastePath: 'test/240321/sample_copy.csv',
        targetText: '한석봉',
        changeText: '김석봉'
    );
  });
}