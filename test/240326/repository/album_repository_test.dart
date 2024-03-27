import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:learn_dart_together/240325/model/todo.dart';
import 'package:learn_dart_together/240326/data_source/json_place_holder_api.dart';
import 'package:learn_dart_together/240326/model/album.dart';
import 'package:learn_dart_together/240326/model/comment.dart';
import 'package:learn_dart_together/240326/model/photo.dart';
import 'package:learn_dart_together/240326/model/post.dart';
import 'package:learn_dart_together/240326/model/user.dart';
import 'package:learn_dart_together/240326/repository/album_repository.dart';
import 'package:test/test.dart';
import 'package:http/testing.dart';
import 'package:http/http.dart' as http;

import '../expected_results.dart';

void main() {
  group('Repository', () {
    test('album', () async {
      final mockClient = MockClient((request) async {
        if (request.url.toString() ==
            'https://jsonplaceholder.typicode.com/albums') {
          return http.Response(jsonEncode(albums), 200);
        }

        return http.Response('error', 400);
      });

      final repository = AlbumRepositoryImpl(JsonPlaceHolderApi(client: mockClient));
      final results = await repository.getAlbumsTop10();
      final expected = albumTop10.map((e) => Album.fromJson(e)).toList();

      expect(results.equals(expected), true);
    });

    test('album 변칙', () async {
      final repository = AlbumRepositoryImpl(MockJsonPlaceHolderApi());
      final results = await repository.getAlbumsTop10();
      final expected = albumTop10.map((e) => Album.fromJson(e)).toList();

      expect(results.equals(expected), true);
    });
  });
}

class MockJsonPlaceHolderApi implements JsonPlaceHolderApi {
  @override
  Future<List<Album>> getAlbums() async {
    List results = albums;
    return results.map((e) => Album.fromJson(e)).toList();
  }

  @override
  Future<List<Comment>> getComments() {
    // TODO: implement getComments
    throw UnimplementedError();
  }

  @override
  Future<List<Photo>> getPhotos() {
    // TODO: implement getPhotos
    throw UnimplementedError();
  }

  @override
  Future<List<Post>> getPosts() {
    // TODO: implement getPosts
    throw UnimplementedError();
  }

  @override
  Future<List<Todo>> getTodos() {
    // TODO: implement getTodos
    throw UnimplementedError();
  }

  @override
  Future<List<User>> getUsers() {
    // TODO: implement getUsers
    throw UnimplementedError();
  }

}