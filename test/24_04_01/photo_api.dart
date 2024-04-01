import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:learn_dart_together/24_04_01/datasource_repository/photo_api.dart';
import 'package:learn_dart_together/24_04_01/dto/photo_dto.dart';
import 'package:learn_dart_together/24_04_01/dto/photo_response.dart' as PhotoResult;
import 'package:test/test.dart';

void main() {
  group('PhotoApi 인터페이스의', () {
    group('구현체 PhotoApiImpl의', () {

      // Future<PhotoResult> getPhotoDto(String keyword) async
      group('getPhotoDto(String keyword)는', () {

        test('정상적인 키워드의 요청에 대해 Future<Success<PhotoDto>>를 반환한다.', () async {
          // Given
          final PhotoApi api = PhotoApiImpl(client: http.Client());
          final keyword = 'eclipse';

          // When
          final result = await api.getPhotoDto(keyword);

          // Then
          expect(result is PhotoResult.Success, isTrue);
          expect((result as PhotoResult.Success).data is PhotoDto, isTrue);
        });

        test('네트워크 비정상 응답에 대해 Future<Error>를 반환한다.', () async {
          // Given
          final abnormalCode = 123;
          final mockClient = MockClient((request) async => http.Response('', abnormalCode));
          final PhotoApi api = PhotoApiImpl(client: mockClient);
          final keyword = 'eclipse';

          // When
          final result = await api.getPhotoDto(keyword);

          // Then
          expect(result is PhotoResult.Error, isTrue);
          expect((result as PhotoResult.Error).e, equals(networkErrorCodeMessage + abnormalCode.toString()));
        });

        test('네트워크 비정상 응답에 대해 Future<Error>를 반환한다.', () async {
          // Given
          final mockClient = MockClient((request) async => http.Response('한글로는 오는 응답은 터지지롱', 200));
          final PhotoApi api = PhotoApiImpl(client: mockClient);
          final keyword = 'eclipse';

          // When
          final result = await api.getPhotoDto(keyword);

          // Then
          expect(result is PhotoResult.Error, isTrue);
          expect((result as PhotoResult.Error).e, equals(networkUndefinedErrorMessage));
        });
      });
    });
  });
}
