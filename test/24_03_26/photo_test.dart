import 'package:learn_dart_together/24_03_26/repository/photo_repository.dart';
import 'package:learn_dart_together/24_03_26/repository/photo_repository_impl.dart';
import 'package:test/test.dart';

void main() {
  test('Photo getPhotos(albumId) test', () async {
    PhotoRepository photoRepo = PhotoRepositoryImpl();
    final result = await photoRepo.getPhotos(1);
    print(result);
  });
}
