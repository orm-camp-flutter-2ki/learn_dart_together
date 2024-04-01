import 'package:learn_dart_together/240401/repository/result.dart';

import '../model/photo.dart';

abstract interface class PhotoRepository {
  Future<Result<List<Photo>>> getPhotos(String query);
}

// PhotoRepository
// Future<Result<List<Photo>>> getPhotos(String query)
// 예외 처리 (Result 패턴)
// try - catch 로 에러 검출시 “알 수 없는 네트워크 에러" 메시지를 리턴
// ‘바보' 로 검색하면 “비속어를 사용할 수 없습니다" 메시지를 리턴
