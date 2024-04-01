import './model/photo.dart';
import './data_source/photo_data_source.dart';
import './repository/photo_repository_impl.dart';

void main() async {
  PhotoDataSource photoDataSource = PhotoDataSource();
  PhotoRepositoryImpl photoRepository = PhotoRepositoryImpl(photoDataSource);

    String queryInput = 'mad';

    // 사진을 가져옵니다.
    List<Photo> photos = await photoRepository.getPhotos(queryInput);
    print(photos.first.imageUrl);
    print(photos.first.tags);

    print(photos.last.imageUrl);
    print(photos.last.tags);
}
