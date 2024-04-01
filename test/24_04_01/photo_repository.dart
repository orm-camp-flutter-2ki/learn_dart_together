import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:learn_dart_together/24_04_01/datasource_repository/photo_api.dart';
import 'package:learn_dart_together/24_04_01/datasource_repository/photo_repository.dart';
import 'package:learn_dart_together/24_04_01/dto/photo_response.dart' as PhotoResult;
import 'package:learn_dart_together/24_04_01/model/photo.dart';
import 'package:test/test.dart';

void main() {
  group('PhotoRepository 인터페이스의', () {
    group('구현체 PhotoRepositoryImpl의', () {

      // Future<PhotoResult> getPhotoDto(String keyword) async
      group('getPhotoDto(String keyword)는', () {

        test('정상적인 키워드의 요청에 대해 Future<Success<List<Photo>>를 반환한다.', () async {
          // Given
          final photoApi = PhotoApiImpl(client: http.Client());
          final PhotoRepository repository = PhotoRepositoryImpl(api: photoApi);
          final keyword = 'eclipse';

          // When
          final result = await repository.getPhotos(keyword);

          // Then
          expect(result is PhotoResult.Success, isTrue);
          expect((result as PhotoResult.Success).data is List<Photo>, isTrue);
        });

        test('비속어(바보) 키워드의 요청에 대해 Future<Error>를 반환한다.', () async {
          // Given
          final photoApi = PhotoApiImpl(client: http.Client());
          final PhotoRepository repository = PhotoRepositoryImpl(api: photoApi);
          final keyword = '바보';

          // When
          final result = await repository.getPhotos(keyword);

          // Then
          expect(result is PhotoResult.Error, isTrue);
          expect((result as PhotoResult.Error).e, equals(slangCensoredMessage));
        });

        test('네트워크 비정상 응답에 대해 Future<Error>를 반환한다.', () async {
          // Given
          final abnormalCode = 123;
          final mockClient = MockClient((request) async => http.Response('', abnormalCode));
          final PhotoApi api = PhotoApiImpl(client: mockClient);
          final PhotoRepository repository = PhotoRepositoryImpl(api: api);
          final keyword = 'eclipse';

          // When
          final result = await repository.getPhotos(keyword);

          // Then
          expect(result is PhotoResult.Error, isTrue);
          expect((result as PhotoResult.Error).e, equals(networkErrorCodeMessage + abnormalCode.toString()));
        });

        test('네트워크 비정상 응답에 대해 Future<Error>를 반환한다.', () async {
          // Given
          final mockClient = MockClient((request) async => http.Response('한글로는 오는 응답은 터지지롱', 200));
          final PhotoApi api = PhotoApiImpl(client: mockClient);
          final PhotoRepository repository = PhotoRepositoryImpl(api: api);
          final keyword = 'eclipse';

          // When
          final result = await repository.getPhotos(keyword);

          // Then
          expect(result is PhotoResult.Error, isTrue);
          expect((result as PhotoResult.Error).e, equals(networkUndefinedErrorMessage));
        });
      });
    });
  });
}
