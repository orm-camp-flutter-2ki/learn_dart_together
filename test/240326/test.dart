import 'package:learn_dart_together/240326/model/Album.dart';
import 'package:learn_dart_together/240326/model/comment.dart';
import 'package:learn_dart_together/240326/repository/album_repository.dart';
import 'package:learn_dart_together/240326/repository/album_repository_implements.dart';
import 'package:learn_dart_together/240326/repository/comment_repository.dart';
import 'package:learn_dart_together/240326/repository/comment_repository_implements.dart';
import 'package:test/test.dart';

void main() {
  test('문제 1번.comment API의 getComment()을 불러와서 인자로 받는 postId 객체만 반환한다.',
      () async {
    final expected = Comment(
        1,
        1,
        'id labore ex et quam laborum',
        'Eliseo@gardner.biz',
        'laudantium enim quasi est quidem magnam voluptate ipsam eos\n'
            'tempora quo necessitatibus\n'
            'dolor quam autem quasi\n'
            'reiciendis et nam sapiente accusantium'); //당일 객체이고
    CommentRepository commentRepo = CommentsRepositoryImpl();
    final result = await commentRepo.getComments(1); //이거는 리스트임 0이라는 애들은 없어서 안됨
    expect(result.first, expected);
  });
  test('문제 2번. album API의 getAlbums()을 불러와 반환한다.', () async {
    final expected = Album(1, 1, 'quidem molestiae enim');
    AlbumRepository albumRepo = AlbumRepositoryImpl();
    final result = await albumRepo.getAlbums();
    expect(result.first, equals(expected)); // 이렇게 돌리면 오류가 뜨는데 왜 뜨는지 모르겠습니다.
    // expect(result.first.title, expected.title);
    // expect(result.first.id, expected.id);
  });
}
