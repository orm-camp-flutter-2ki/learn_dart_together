import 'package:http/http.dart' as http;
import '../model/photo.dart';
import '../repository/photo_repository.dart';
import '../repository/photo_repository_implement.dart';

class PhotoApi {
  final String baseUrl = 'https://pixabay.com/api/'; // 이미지 검색할 사이트
  final String apiKey = '43170063-f98cf45cf08f4f0c5a1835a7b'; // 내꺼 API Key

  Future<String> fetchPhotos(String query) async {
    final response = await http.get(Uri.parse(
        '$baseUrl?key=$apiKey&q=$query&image_type=photo&pretty=true'));
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('실패!');
    }
  }
}

void main() async {
  final PhotoRepository photoRepository = PhotoRepositoryImplement();

  final String query = "dart";

  final result = await photoRepository.getPhotos(query);

  result.when(
    success: (List<Photo> photos) {
      print("검색된 사진 수: ${photos.length}");
      for (var photo in photos) {
        print("태그: ${photo.tags}, 이미지 URL: ${photo.imageUrl}");
      }
    },
    error: (Exception e) {
      print("사진 검색 중 오류 발생: $e");
    },
  );
}
