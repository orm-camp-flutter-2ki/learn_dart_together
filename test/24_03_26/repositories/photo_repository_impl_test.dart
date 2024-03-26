import 'package:learn_dart_together/24_03_26/apis/Photo_api.dart';
import 'package:learn_dart_together/24_03_26/model/photo.dart';
import 'package:learn_dart_together/24_03_26/repositories/Photo_repository_impl.dart';
import 'package:test/test.dart';

import '../../24_03_25/fake_http_proxy.dart';

void main() {
  group('PhotoRepositoryImpl 클래스', () {
    final PhotoRepositoryImpl photoRepository =
        PhotoRepositoryImpl(PhotoApi(http: FakeHttpProxy()));
    group('getPhotos 메소드는', () {
      test('photoApi.getPhotos 메소드를 호출한다', () async {
        // Given
        final expected = Photo(
            albumId: 1,
            id: 1,
            title: "accusamus beatae ad facilis cum similique qui sunt",
            url: "https://via.placeholder.com/600/92c952",
            thumbnailUrl: "https://via.placeholder.com/150/92c952");
        // When
        final result =
            await photoRepository.getPhotos(expected.albumId.toInt());

        // Then
        expect(result.first, expected);
      });
    });
  });
}
