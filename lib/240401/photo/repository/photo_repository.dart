import '../model/photo.dart';

abstract interface class PhotoRepository {
  Future<List<Photo>> getPhotos(String query);
  // Future<Result<List<Photo>, NetworkError>> getPhotos({String query});
}
