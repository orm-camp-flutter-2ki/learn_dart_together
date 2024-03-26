import 'package:dart_cli_practice/240326/model/photo.dart';
import 'package:dart_cli_practice/240326/repository/photo_repository.dart';
import 'package:dart_cli_practice/240326/repository/photo_repository_impl.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  final expectPhoto = Photo(
    albumId: 1,
    id: 1,
    title: 'accusamus beatae ad facilis cum similique qui sunt',
    url: 'https://via.placeholder.com/600/92c952',
    thumbnailUrl: 'https://via.placeholder.com/150/92c952',
  );

  group('PhotoRepositoryImpl 는', () {
    test('getPhotos(albumId) 메소드로 albumId 에 해당하는 Photo를 가져온다.', () async {
      PhotoRepository photoRepository = PhotoRepositoryImpl();

      final actualPhoto = await photoRepository.getPhotos(1);
      expect(actualPhoto[0], equals(expectPhoto));
    });
  });
}
