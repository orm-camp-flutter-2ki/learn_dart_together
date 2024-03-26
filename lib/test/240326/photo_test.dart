import 'package:learn_dart_together/240326/repository/photo_repository_impl.dart';
import 'package:test/test.dart';

import '../../240326/data_source/photo.dart';

void main() {
  test('PhotoReposirotyImpl.getPhotos 메소드를 호출한다', () async {
    // Given
    final sol = Photo(
        albumId: 1,
        id: 1,
        title: "accusamus beatae ad facilis cum similique qui sunt",
        url: "https://via.placeholder.com/600/92c952",
        thumbnailUrl: "https://via.placeholder.com/150/92c952");
    // When
    final result = await PhotoReposirotyImpl().getPhotos(1);

    // Then
    expect(result.first, sol);
  });
}
