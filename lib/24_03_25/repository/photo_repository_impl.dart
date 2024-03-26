import 'package:learn_dart_together/24_03_25/model/photo_model.dart';
import 'package:learn_dart_together/24_03_25/repository/interface/photo_repository.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class PhotoRepositoryImpl implements PhotoRepository{
  @override
  Future<List<PhotoModel>> getPhotos(int albumId) async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos?albumId=$albumId'));

    if (response.statusCode == 200) {
      final jsonList = json.decode(response.body) as List;
      return jsonList.map((e) => PhotoModel.fromJson(e)).toList();
    } else {
      throw Exception('통신 오류');
    }
  }
}

void main() async{
  final photos = await PhotoRepositoryImpl().getPhotos(1);
  print(photos);
}