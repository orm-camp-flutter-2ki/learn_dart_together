import 'package:learn_dart_together/240401/data_source/photo_api.dart';
import 'package:learn_dart_together/240401/mapper/photo_mapper.dart';
import 'package:learn_dart_together/240401/model/photo.dart';
import 'package:learn_dart_together/240401/model/result.dart';
import 'package:learn_dart_together/240401/repository/photo_repo.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  //데이터소스에서 받은 값을 가공하여 사용자의 입맛에 맞게 전달해주는 역할
  final PhotoApi _api = PhotoApi(); //클래스의 인스턴스를 생성한 것임

  @override
  Future<Result<List<Photo>>> searchHitList(String query) async {
    //String query 매개변수
    if (query == '바보') {
      return Result.error('비속어를 사용할 수 없습니다');
    }
    try {
      final hitList = await _api
          .getListHits(query); //main 실행 -> 레포지토리 -> 임플리먼트 -> api -> 출력 //인자
      final photoList = hitList.map((e) => e.toPhoto()).toList();
      return Result.success(photoList);
    } catch (e) {
      return Result.error('알 수 없는 네트워크 에러');
    }
  }
}
