import 'package:learn_dart_together/24_04_01/data_source/photo_api.dart';
import 'package:learn_dart_together/24_04_01/model/photo.dart';
import 'package:learn_dart_together/24_04_01/repository/photo_repository_impl.dart';
import 'package:learn_dart_together/24_04_01/repository/result.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:test/test.dart';

void main() {
  group('PhotoRepository 인터페이스의', () {
    group('구현체 PhotoRepositoryImpl의', () {
      //Future<PhotoResult> getPhotoDto(String keyword) async
      group('findPhotoByKeyword(keyword)는 ', () {
        test('정상적인 키워드의 요청에 대해 List<Photo>를 반환 한다.', () async {
          // Given
          PhotoRepositoryImpl impl = PhotoRepositoryImpl();

          // When
          final Result<List<Photo>> photoList =
              await impl.findPhotoByKeyword('달력');

          // Then
          expect((photoList as Success).data is List<Photo>, isTrue);
        });

        test('비속어(바보) 키워드의 요청에 대해 <Error>를 반환 한다.', () async {
          // Given
          PhotoRepositoryImpl impl = PhotoRepositoryImpl();

          // When
          final Result<List<Photo>> photoList =
              await impl.findPhotoByKeyword('바보');

          // Then
          expect('비속어를 사용할 수 없습니다', (photoList as Error).message);
        });

        test('네트워크 비정상 응답에 대해 Future<Success<List<Photo>>를 반환 한다.', () async {
          // Given

          // When

          // Then
        });
      });
    });
  });
}
