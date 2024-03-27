import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_26/Model/comment.dart';
import 'package:learn_dart_together/%EC%A0%95%EB%8B%A4%ED%9D%AC/24_03_26/dataSource/todo_api.dart';

import '../24_03_25/data_source/todo.dart';
import '../24_03_25/data_source/user.dart';
import '../24_03_25/data_source/user_api.dart';
import 'Model/album.dart';
import 'Model/photo.dart';
import 'Model/post.dart';
import 'dataSource/album_api.dart';
import 'dataSource/comment_api.dart';
import 'dataSource/photo_api.dart';
import 'dataSource/post_api.dart';

// 커멘트
abstract interface class CommentRepository {
  Future<List<Comment>> getComments(int postId);
  Future<List<Comment>> findAllComments();
}

class CommentApiImpl implements CommentRepository {
  final api = CommentApi();

  // override 단축어 뭐지,,

  @override
  Future<List<Comment>> findAllComments() async {
    return api.getComments();
  }

  @override
  Future<List<Comment>> getComments(int postId) {
    return api.getCommentById(postId);
  }
}

// 앨범
abstract interface class AlbumRepository {
  Future<List<Album>> getAlbums();
  Future<List<Album>> getAlbumsTop10();
}

class AlbumApiImpl implements AlbumRepository {
  final api = AlbumApi();
  @override
  Future<List<Album>> getAlbums() {
    return api.getAlbums();
  }

  @override
  Future<List<Album>> getAlbumsTop10() {
    return api.getTop10Album();
  }
}

// 사진

abstract interface class PhotoRepository {
  Future<List<Photo>> getPhotos(int albumId);
}

class PhotoApiImpl implements PhotoRepository {
  final api = PhotoApi();
  @override
  Future<List<Photo>> getPhotos(int albumId) {
    return api.getPhotos(albumId);
  }
}

// todos

abstract interface class TodoRepository {
  Future<List<Todo>> getTodos();
  Future<List<Todo>> getCompletedTodos();
}

class TodoApiImpl implements TodoRepository {
  final api = TodoApi();
  @override
  Future<List<Todo>> getCompletedTodos() {
    return api.getCompletedTodos();
  }

  @override
  Future<List<Todo>> getTodos() {
    return api.getTodos();
  }
}

//user

abstract interface class UserRepository {
  Future<List<User>> getUsers();
  Future<List<User>> getUsersTop10ByUserName();
}

class UserApiImpl implements UserRepository {
  final api = UserApi();

  @override
  Future<List<User>> getUsers() {
    return api.getUsers();
  }

  @override
  Future<List<User>> getUsersTop10ByUserName() async {
    final list = await api.getUsers();
    return list
      ..sort((a, b) => a.name.compareTo(b.name))
      ..sublist(0, 10);
  }
}

// post

abstract interface class PostRepository {
  Future<Post> getPost(int id);
  // Future<List<Post>> getPosts();
  Future<List<Post>> getPosts(int page, int limit);
}

class PostApiImpl implements PostRepository {
  final api = PostApi();

  @override
  Future<Post> getPost(int id) {
    return api.getPost(id);
  }

  @override
  Future<List<Post>> getPosts(int page, int limit) {
    return api.getPosts(page, limit);
  }
}
