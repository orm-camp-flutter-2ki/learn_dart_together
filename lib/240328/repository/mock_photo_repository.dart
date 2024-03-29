import '../model/photo.dart';

abstract interface class MockPhotoRepository {
  List<Photo> getPhotos(String mockData);
}