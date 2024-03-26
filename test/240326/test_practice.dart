import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240326/datamodel/album.dart';
import 'package:learn_dart_together/240326/datamodel/comment.dart';
import 'package:learn_dart_together/240326/datamodel/photo.dart';
import 'package:learn_dart_together/240326/repository/albumRepository.dart';
import 'package:learn_dart_together/240326/repository/albumRepositoryImpl.dart';
import 'package:learn_dart_together/240326/repository/commentsRepository.dart';
import 'package:learn_dart_together/240326/repository/commentsRepositoryImpl.dart';
import 'package:learn_dart_together/240326/repository/photoRepository.dart';
import 'package:learn_dart_together/240326/repository/photoRepositoryImpl.dart';
import 'package:test/test.dart';


void main() {
  test('practice1', () async {
    CommentsRepository commentsRepositoryImpl = CommentsRepositoryImpl();
    List<Comment> Comments = await commentsRepositoryImpl.getComments(1);
    expect(Comments[0].postId, equals('1'));
  });
  test('practice2', () async {
    AlbumRepository albumRepositoryImpl = AlbumRepositoryImpl();
    List<Album> albumList =  await albumRepositoryImpl.getAlbums();
    Album Album1  = Album(userId: '1', id: '1', title: 'quidem molestiae enim');
    expect( albumList[0]==Album1, equals(true));
    List<Album> albumListTop10 = await albumRepositoryImpl.getAlbumsTop10();
    expect( albumListTop10.length, equals(10));
  });
  test('practice3', () async {
    PhotoRepository albumRepositoryImpl = PhotoRepositoryImpl();
    List<Photo> albumList =  await albumRepositoryImpl.getPhotos(1);
    expect( albumList[0].albumId == 1.toString(), equals(true));
  });

}