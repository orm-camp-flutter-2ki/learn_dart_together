import 'package:learn_dart_together/24_03_25/data_source/subway_api.dart';
import 'package:learn_dart_together/24_03_25/model/albumModel.dart';
import 'package:learn_dart_together/24_03_25/model/comment_model.dart';
import 'package:learn_dart_together/24_03_25/model/photo_model.dart';
import 'package:learn_dart_together/24_03_25/model/post_model.dart';
import 'package:learn_dart_together/24_03_25/repository/album_repository_impl.dart';
import 'package:learn_dart_together/24_03_25/repository/comment_repository.dart';
import 'package:learn_dart_together/24_03_25/repository/photo_repository_impl.dart';
import 'package:learn_dart_together/24_03_25/repository/post_repository_impl.dart';
import 'package:learn_dart_together/24_03_25/repository/user_repository_impl.dart';
import 'package:learn_dart_together/24_03_25/model/subway_model.dart';
import 'package:learn_dart_together/24_03_25/model/todo_model.dart';
import 'package:learn_dart_together/24_03_25/model/user/user_model.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:learn_dart_together/24_03_25/repository/todo_repository_impl.dart';

void main() {
  group('api test', () {
    test('todo api test', () async {
      final TodoModel todoModel = await TodoRepositoryImpl().getTodo(1);
      expect(todoModel, isNotNull);
    });

    test('todos api test', () async{
      final List<TodoModel> todosModel = await TodoRepositoryImpl().getTodos();
      final List<TodoModel> todosModel2 = await TodoRepositoryImpl().getCompletedTodos();
      expect(todosModel, isNotNull);
      expect(todosModel2, isNotNull);
    });

    test('user api test', () async{
      final List<UserModel> userModel = await UserRepositoryImpl().getUsers();
      final List<UserModel> userModel2 = await UserRepositoryImpl().getUsersTop10ByUserName();
      expect(userModel, isNotNull);
      expect(userModel2, isNotNull);
    });

    test('subway api test', () async {
      final List<SubwayModel> subway = await subwayApi();
      expect(subway, isNotNull);
    });
  });
  
  group('repository test', () {
    test('comments repository test', () async {
      final List<CommentModel> commentModel = await CommentRepository().getComments(1);
      expect(commentModel, isNotNull);
    });

    test('albums repository test', () async {
      final List<AlbumModel> albumModel = await AlbumRepositoryImpl().getAlbums();
      final List<AlbumModel> albumModel2 = await AlbumRepositoryImpl().getAlbumsTop10();
      expect(albumModel, isNotNull);
      expect(albumModel2, isNotNull);
    });

    test('photo repository test', () async {
      final List<PhotoModel> photoModel = await PhotoRepositoryImpl().getPhotos(1);
      expect(photoModel, isNotNull);
    });

    test('post repository test', () async {
      final List<PostModel> postModel = await PostRepositoryImpl().getPosts();
      final PostModel postModel2 = await PostRepositoryImpl().getPost(1);
      final List<PostModel> postModel3 = await PostRepositoryImpl().getPagePosts(1, 3);
      expect(postModel, isNotNull);
      expect(postModel2, isNotNull);
      expect(postModel3, isNotNull);
    });
  });
}