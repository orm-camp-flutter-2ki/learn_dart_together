import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240326/repository/photo/photo.dart';
import 'package:learn_dart_together/240326/repository/photo/photo_repository.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  final String _apiUrl = 'https://jsonplaceholder.typicode.com/photos';

  @override
  Future<List<Photo>> getPhotos(int albumId) async {
    final response = await http.get(Uri.parse('$_apiUrl?albumId=$albumId'));

    if (response.statusCode == 200) {
      List<dynamic> jsonList = jsonDecode(response.body);
      return jsonList.map((e) => Photo.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load photos');
    }
  }
}

Future<void> main() async {
  PhotoRepositoryImpl photoRepository = PhotoRepositoryImpl();

  try {
    int albumId = 1; // Change to desired albumId
    List<Photo> photos = await photoRepository.getPhotos(albumId);
    print('$albumId의 사진 목록:');
    photos.forEach((photo) => print(photo));
  } catch (e) {
    print('오류: $e');
  }
}