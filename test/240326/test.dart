import 'package:learn_dart_together/240326/model/address.dart';
import 'package:learn_dart_together/240326/model/album.dart'; //대문자 잘 보기
import 'package:learn_dart_together/240326/model/comment.dart';
import 'package:learn_dart_together/240326/model/company.dart';
import 'package:learn_dart_together/240326/model/photo.dart';
import 'package:learn_dart_together/240326/model/todo.dart';
import 'package:learn_dart_together/240326/model/user.dart';
import 'package:learn_dart_together/240326/repository/album_repository.dart';
import 'package:learn_dart_together/240326/repository/album_repository_implements.dart';
import 'package:learn_dart_together/240326/repository/comment_repository.dart';
import 'package:learn_dart_together/240326/repository/comment_repository_implements.dart';
import 'package:learn_dart_together/240326/repository/photo_repository.dart';
import 'package:learn_dart_together/240326/repository/photo_repository_implements.dart';
import 'package:learn_dart_together/240326/repository/todo_repository.dart';
import 'package:learn_dart_together/240326/repository/todo_repository_implements.dart';
import 'package:learn_dart_together/240326/repository/user_repository.dart';
import 'package:learn_dart_together/240326/repository/user_repository_implements.dart';
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
    // expect(result.first, equals(expected)); // 이렇게 돌리면 오류가 뜨는데 왜 뜨는지 모르겠습니다. -> import 할때 대소문자 확인하기
    expect(result.first.title, expected.title);
    expect(result.first.userId, expected.userId);
    expect(result.first.id, expected.id);
  });
  test('문제 3번. photo API의 getPhotos(int albumId)을 불러와 반환한다.', () async {
    final expected = Photo(
        1,
        1,
        'accusamus beatae ad facilis cum similique qui sunt',
        'https://via.placeholder.com/600/92c952',
        'https://via.placeholder.com/150/92c952');
    PhotoRepository photoRepo = PhotoRepositoryImpl();
    final result = await photoRepo.getPhotos(expected.albumId.toInt());
    expect(result.first, expected);
  });
  test('문제 4번. todos API의 getTodos()을 불러와 반환한다.', () async {
    final expected = Todo(1, 1, 'delectus aut autem', false);
    TodoRepository todoRepo = TodoRepositoryImpl();
    final result = await todoRepo.getTodos();
    expect(result.first, expected);
  });
  test(
      '문제 4번. todos API의 getCompletedTodos()을 불러와 completed가 true인 List<Todo>를 반환한다.',
      () async {
    final expected = Todo(1, 4, 'et porro tempora', true);
    TodoRepository todoRepo = TodoRepositoryImpl();
    final result = await todoRepo.getCompletedTodos();
    expect(result.first, expected);
  });
  test(
      '문제 5번. user API의 getUsersTop10ByUserName()을 불러와 10개의 List<User>를 반환한다. 기준은 알파벳 순서로 정렬',
      () async {
    final expected = User(
        id: 1,
        name: 'Leanne Graham',
        username: 'Bret',
        email: 'Sincere@april.biz',
        address: Address(
            street: 'Kulas Light',
            suite: 'Apt. 556',
            city: 'Gwenborough',
            geo: {'lat': '-37.3159', 'lng': '81.1496'},
            zipcode: '92998-3874'),
        phone: '1-770-736-8031 x56442',
        website: 'hildegard.org',
        company: Company(
            name: 'Romaguera-Crona',
            catchPhrase: 'Multi-layered client-server neural-net',
            bs: 'harness real-time e-markets'));
    UserRepository userRepo = UserRepositoryImpl();
    final result = await userRepo.getUsers();
    expect(result.first.id, expected.id);
    expect(result.first.name, expected.name);
    expect(result.first.username, expected.username);
    expect(result.first.email, expected.email);
    expect(result.first.address, expected.address);
    expect(result.first.phone, expected.phone);
    expect(result.first.website, expected.website);
    expect(result.first.company, expected.company);
    expect(result.first, expected);
  });
  test('문제 5번. user API의 getUsers()을 불러와 List<User>를 반환한다.', () async {
    final expected = User(
        id: 5,
        name: 'Chelsey Dietrich',
        username: 'Kamren',
        email: 'Lucio_Hettinger@annie.ca',
        address: Address(
            street: 'Skiles Walks',
            suite: 'Suite 351',
            city: 'Roscoeview',
            geo: {'lat': '-31.8129', 'lng': '62.5342'},
            zipcode: '33263'),
        phone: '(254)954-1289',
        website: 'demarco.info',
        company: Company(
            name: 'Keebler LLC',
            catchPhrase: 'User-centric fault-tolerant solution',
            bs: 'revolutionize end-to-end systems'));
    UserRepository userRepo = UserRepositoryImpl();
    final result = await userRepo.getUsersTop10ByUserName();
    expect(result.first, expected);
  });
}
