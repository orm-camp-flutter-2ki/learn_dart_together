import 'package:http/http.dart' as http;
import 'package:learn_dart_together/240325/todo.dart';
import 'package:learn_dart_together/240325/user.dart';
import 'package:learn_dart_together/240326/datamodel/album.dart';
import 'package:learn_dart_together/240326/datamodel/comment.dart';
import 'package:learn_dart_together/240326/datamodel/photo.dart';
import 'package:learn_dart_together/240326/datamodel/post.dart';
import 'package:learn_dart_together/240326/repository/albumRepository.dart';
import 'package:learn_dart_together/240326/repository/albumRepositoryImpl.dart';
import 'package:learn_dart_together/240326/repository/commentsRepository.dart';
import 'package:learn_dart_together/240326/repository/commentsRepositoryImpl.dart';
import 'package:learn_dart_together/240326/repository/photoRepository.dart';
import 'package:learn_dart_together/240326/repository/photoRepositoryImpl.dart';
import 'package:learn_dart_together/240326/repository/postRepository.dart';
import 'package:learn_dart_together/240326/repository/postRepositoryImpl.dart';
import 'package:learn_dart_together/240326/repository/toDoRepository.dart';
import 'package:learn_dart_together/240326/repository/toDoRepositoryImpl.dart';
import 'package:learn_dart_together/240326/repository/userRepository.dart';
import 'package:learn_dart_together/240326/repository/userRepositoryImpl.dart';
import 'package:test/test.dart';

void main() {
  test('practice1', () async {
    CommentsRepository commentsRepositoryImpl = CommentsRepositoryImpl();
    List<Comment> Comments = await commentsRepositoryImpl.getComments(1);
    expect(Comments[0].postId, equals('1'));
  });
  test('practice2', () async {
    AlbumRepository albumRepositoryImpl = AlbumRepositoryImpl();
    List<Album> albumList = await albumRepositoryImpl.getAlbums();
    Album Album1 = Album(userId: '1', id: '1', title: 'quidem molestiae enim');
    expect(albumList[0] == Album1, equals(true));
    List<Album> albumListTop10 = await albumRepositoryImpl.getAlbumsTop10();
    expect(albumListTop10.length, equals(10));
  });
  test('practice3', () async {
    PhotoRepository albumRepositoryImpl = PhotoRepositoryImpl();
    List<Photo> albumList = await albumRepositoryImpl.getPhotos(1);
    expect(albumList[0].albumId == 1.toString(), equals(true));
  });
  test('practice4', () async {
    TodoRepository todoRepositoryImpl = TodoRepositoryImpl();
    List<Todo> todoList = await todoRepositoryImpl.getTodos();
    expect(todoList[0].id == 1.toString(), equals(true));
    List<Todo> compTodoList = await todoRepositoryImpl.getCompletedTodos();
    expect(compTodoList[0].completed == true, equals(true));
  });
  test('practice5', () async {
    UserRepository userRepositoryImpl = UserRepositoryImpl();
    List<User> userList = await userRepositoryImpl.getUsers();
    expect(userList[0].username == 'Bret', equals(true));
    List<User> userListTop10 =
        await userRepositoryImpl.getUsersTop10ByUserName();
    expect(userListTop10.length, equals(10));
    expect(userListTop10[0].username == 'Antonette', equals(true));
  });
  test('practice6', () async {
    PostRepository postRepository = PostRepositoryImpl();
    List<Post> postListLimit = await postRepository.getPostsLimit(2, 5);
    expect(postListLimit[0].id == '6', equals(true));
    List<Post> postListLimit1 = await postRepository.getPostsLimit(0, 5);
    expect(postListLimit1[0].id == '1', equals(true));
    Post postId = await postRepository.getPost(2);
    expect(postId.id == '2', equals(true));
    List<Post> postList = await postRepository.getPosts();
    expect(postList[0].id == '1', equals(true));
  });
}
