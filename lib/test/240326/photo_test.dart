import 'package:learn_dart_together/240326/repository/photo_repository.dart';
import 'package:test/test.dart';

import '../../240326/model/photo.dart';

void main() {
  test('photos Test', () async {
    final repository = PhotoRepositoryImpl();
    final List<Photo> photos = await repository.getPhotosAlbum(1);
    print(photos);
  });
}
