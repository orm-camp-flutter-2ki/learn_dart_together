import 'package:learn_dart_together/24_03_19/-2/file_service.dart';
import 'package:learn_dart_together/24_03_21/async_practice.dart';
import 'package:learn_dart_together/24_03_21/movie.dart';
import 'package:test/test.dart';

void main() {
  group('AsyncPractice 클래스', () {
    final FileService fileService = FileService();
    final AsyncPractice asyncPractice = AsyncPractice();
    const String exampleStr = '1, 홍길동, 30\n2, 한석봉, 20';
    const String sourcePath = 'test/24_03_21/resource/sample_test.csv';
    const String targetPath = 'test/24_03_21/resource/sample_copy_test.csv';
    setUp(() => fileService.writeToFile(sourcePath, exampleStr));
    tearDown(() {
      if (fileService.isFileExist(targetPath)) fileService.deleteFile(targetPath);
      if (fileService.isFileExist(sourcePath)) fileService.deleteFile(sourcePath);
    });
    group('fileHandler 메소드는', () {
      test('기존의 파일을 copy하는데 한성복 이라는 문자열이 있으면 김석봉으로 수정해서 파일을 만든다.', () async {
        // Given
        String expected = '1, 홍길동, 30\n2, 김석봉, 20';

        // When
        await asyncPractice.fileHandler(sourcePath, targetPath);

        // Then
        expect(await fileService.asyncReadFile(targetPath), expected);
      });
    });

    group('getMovieInfo 메소드는', () {
      test('2초 딜레이 후 json을 영화객체로 역직렬화 후 반환한다.', () async {
        // Given
        String expected = '성종호';
        String json = '''{
          "title": "Star ward",
          "director": "$expected",
          "year": 1977
        }''';

        // When
        Movie result = await asyncPractice.getMovieInfo(json);

        // Then
        expect(result.director, expected);
      });
    });
  });
}
