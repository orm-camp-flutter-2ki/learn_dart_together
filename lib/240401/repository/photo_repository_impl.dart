import 'package:learn_dart_together/240401/data_source/photo_api.dart';
import 'package:learn_dart_together/240401/mapper/result.dart';
import 'package:learn_dart_together/240401/model/photo/hit.dart';
import 'package:learn_dart_together/240401/repository/photo_repository.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  // api 주입받아서 사용
  final PhotoApi _api;
  // 생성자
  PhotoRepositoryImpl({PhotoApi? api}) : _api = api ?? PhotoApi();

  @override
  Future<Result<List<Hit>>> getPhotos(String query) async {
    final datas = await _api.getPhotos(query);
    final photos = datas.hits;
    if (photos != null) {
      return Result.success(photos);
    } else {
      throw Exception('error');
    }
  }
}

void main() async {}
