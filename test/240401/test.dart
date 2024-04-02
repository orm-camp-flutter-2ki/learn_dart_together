import 'package:learn_dart_together/240401/model/photo.dart';
import 'package:learn_dart_together/240401/model/result.dart';
import 'package:learn_dart_together/240401/repository/photo_repo_impl.dart';
import 'package:test/test.dart';

void main() {
  test(
      '쿼리에 비속어(바보)를 쳤을 경우에 비속어를 사용할 수 없습니다를 반환하고자 함 Result sealed class 을 만들어 에러 상황을 정의하고 impl에서 오버라이딩 하여 기능 구현 그것을 searchHitList() 로 결과 값을 반환한다. ',
      () async {
    //given 선언 생성
    final repo = PhotoRepositoryImpl(); //인스턴스 생성하는 느낌이기에 클래스에도 괄호를 써야함
    //when
    final result = await repo.searchHitList('바보');
    switch (result) {
      //result가 애초에 들어가 있으니 리졸트 리스트 형태로 안가지고 와도됨
      case Success<List<Photo>>():
        print(result.data[0]);
      case Error():
        print(result.e);
        expect(result.e, '비속어를 사용할 수 없습니다');
    }
    //then
  });
  test(
      //given 선언 생성
      '작성한 쿼리에 대래 검색이 되어 값을 반환. impl에서 오버라이딩 하여 기능 구현하고 searchHitList(yellow)의 yellow 값을 반환. ',
      () async {
    final repo = PhotoRepositoryImpl(); //인스턴스 생성하는 느낌이기에 클래스에도 괄호를 써야함
    //when
    final result = await repo.searchHitList('yellow');
    final expectedPhoto = Photo(
        tags: 'yellow, wall, girl',
        imageUrl:
            'https://cdn.pixabay.com/user/2015/03/30/12-22-31-508_250x250.jpg');

    switch (result) {
      //result가 애초에 들어가 있으니 리졸트 리스트 형태로 안가지고 와도됨
      case Success<List<Photo>>():
        print(result.data[0]);
        expect(result.data[0], expectedPhoto);
      case Error():
        print(result.e);
      // expect(result, '비속어를 사용할 수 없습니다');
    }
  });
}
