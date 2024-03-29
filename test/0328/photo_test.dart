import 'package:learn_dart_together/0328/model/enum_type.dart';
import 'package:learn_dart_together/0328/model/photo.dart';
import 'package:learn_dart_together/0328/repository/photo_repository.dart';
import 'package:learn_dart_together/0328/repository/photo_repository_impl.dart';
import 'package:test/test.dart';

void main() {
  test('포토 정보 확인', () async {

    PhotoRepository photoRepository = PhotoRepositoryImpl();
    List<Photo> photos = await photoRepository.getPhotos();
    
    expect(photos.first.type, EnumType.article);
    expect(photos.last.type, EnumType.unknown);
  });
}