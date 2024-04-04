import 'package:learn_dart_together/24_04_01/model/photo.dart';
import 'package:learn_dart_together/24_04_01/repository/photo_repository.dart';
import 'package:learn_dart_together/http/error_type.dart';
import 'package:learn_dart_together/http/http_core.dart';
import 'package:learn_dart_together/http/result.dart';
import 'package:test/scaffolding.dart';

void main() {
  group(
      'Result 패턴',
      () => {
            test('pixabay Api를 호출한다.', () async {
              final photos =
                  await PhotoRepository(HttpService()).getPhotos('&q=바보');

              switch (photos) {
                case Success<List<Photo>, ErrorType>():
                  print(photos.data);
                case Error<List<Photo>, ErrorType>():
                  {
                    switch (photos.error) {
                      case ErrorType.unknown:
                        print('알 수 없는 네트워크 에러');
                      case ErrorType.requestTimeOut:
                        print('타임 아웃');
                      case ErrorType.typeError:
                        print('타입 에러');
                      case ErrorType.profanityIncluded:
                        print('비속어를 사용 할 수 없습니다.');
                    }
                  }
               }
            })
          });
}
