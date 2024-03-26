import 'package:learn_dart_together/orm_240326/00_data_source/albums_api.dart';
import 'package:learn_dart_together/orm_240326/00_data_source/comments_api.dart';
import 'package:test/test.dart';

void main() {
  test('comments(postId) test', () async {
    final commentsRespositoryImpl = CommentsRepositoryImpl();
    final getComments = await commentsRespositoryImpl.getComments(1);
    // print(getComments);
    expect(getComments.length, 5);
  });

  test('albums getAlbums test', () async {
    final albumsrepositoryImpl = AlbumsRepositoryImpl();
    final getAlbums = await albumsrepositoryImpl.getAlbums();
    // print(getAlbums);
  });
}
