import '../model/photo.dart';
import '../result.dart';


abstract interface class PhotoRepository {
  // Future<List<Photo>> getPhotos(String query);
  Future<Result<List<Photo>>> getPhotos(String query);
  // Future<Result<List<Photo>, Error>> getPhotos(String query);
}
