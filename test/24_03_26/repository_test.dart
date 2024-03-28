import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_25/todo.dart';
import 'package:learn_dart_together/24_03_25/user.dart';
import 'package:learn_dart_together/24_03_26/album.dart';
import 'package:learn_dart_together/24_03_26/comment.dart';
import 'package:learn_dart_together/24_03_26/photo.dart';
import 'package:learn_dart_together/24_03_26/post.dart';
import 'package:learn_dart_together/repository/album_repository_impl.dart';
import 'package:learn_dart_together/repository/comment_repository_impl.dart';
import 'package:learn_dart_together/repository/photo_repository_impl.dart';
import 'package:learn_dart_together/repository/post_repository_impl.dart';
import 'package:learn_dart_together/repository/todo_repository_impl.dart';
import 'package:learn_dart_together/repository/user_repository_impl.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('repository test', () {
    test('comment test', () async {
      final postId = 2;
      bool isSame = true;
      final List<Comment> comments =
          await CommentRepositoryImpl().getCommentsByPostId(postId);

      for (Comment e in comments) {
        if (e.postId != postId) {
          return isSame = false;
        }
        return isSame;
      }

      expect(isSame, true);
    });

    test('comment test2', () async {
      final postId = 2;
      final List<Comment> comments =
          await CommentRepositoryImpl().getCommentsByPostId(postId);

      //r 은 raw 데이터
      String jsonData = r'''[
    {
        "postId": 2,
        "id": 6,
        "name": "et fugit eligendi deleniti quidem qui sint nihil autem",
        "email": "Presley.Mueller@myrl.com",
        "body": "doloribus at sed quis culpa deserunt consectetur qui praesentium\naccusamus fugiat dicta\nvoluptatem rerum ut voluptate autem\nvoluptatem repellendus aspernatur dolorem in"
    },
    {
        "postId": 2,
        "id": 7,
        "name": "repellat consequatur praesentium vel minus molestias voluptatum",
        "email": "Dallas@ole.me",
        "body": "maiores sed dolores similique labore et inventore et\nquasi temporibus esse sunt id et\neos voluptatem aliquam\naliquid ratione corporis molestiae mollitia quia et magnam dolor"
    },
    {
        "postId": 2,
        "id": 8,
        "name": "et omnis dolorem",
        "email": "Mallory_Kunze@marie.org",
        "body": "ut voluptatem corrupti velit\nad voluptatem maiores\net nisi velit vero accusamus maiores\nvoluptates quia aliquid ullam eaque"
    },
    {
        "postId": 2,
        "id": 9,
        "name": "provident id voluptas",
        "email": "Meghan_Littel@rene.us",
        "body": "sapiente assumenda molestiae atque\nadipisci laborum distinctio aperiam et ab ut omnis\net occaecati aspernatur odit sit rem expedita\nquas enim ipsam minus"
    },
    {
        "postId": 2,
        "id": 10,
        "name": "eaque et deleniti atque tenetur ut quo ut",
        "email": "Carmen_Keeling@caroline.name",
        "body": "voluptate iusto quis nobis reprehenderit ipsum amet nulla\nquia quas dolores velit et non\naut quia necessitatibus\nnostrum quaerat nulla et accusamus nisi facilis"
    }
]''';

      List commentEquals = jsonDecode(jsonData);

      expect(
          comments
              .equals(commentEquals.map((e) => Comment.fromJson(e)).toList()),
          true);
    });

    test('album test', () async {
      final List<Album> albums = await AlbumRepositoryImpl().getAlbums();

      //r 은 raw 데이터
      String jsonData = r'''[
    {
        "postId": 2,
        "id": 6,
        "name": "et fugit eligendi deleniti quidem qui sint nihil autem",
        "email": "Presley.Mueller@myrl.com",
        "body": "doloribus at sed quis culpa deserunt consectetur qui praesentium\naccusamus fugiat dicta\nvoluptatem rerum ut voluptate autem\nvoluptatem repellendus aspernatur dolorem in"
    },
    {
        "postId": 2,
        "id": 7,
        "name": "repellat consequatur praesentium vel minus molestias voluptatum",
        "email": "Dallas@ole.me",
        "body": "maiores sed dolores similique labore et inventore et\nquasi temporibus esse sunt id et\neos voluptatem aliquam\naliquid ratione corporis molestiae mollitia quia et magnam dolor"
    },
    {
        "postId": 2,
        "id": 8,
        "name": "et omnis dolorem",
        "email": "Mallory_Kunze@marie.org",
        "body": "ut voluptatem corrupti velit\nad voluptatem maiores\net nisi velit vero accusamus maiores\nvoluptates quia aliquid ullam eaque"
    },
    {
        "postId": 2,
        "id": 9,
        "name": "provident id voluptas",
        "email": "Meghan_Littel@rene.us",
        "body": "sapiente assumenda molestiae atque\nadipisci laborum distinctio aperiam et ab ut omnis\net occaecati aspernatur odit sit rem expedita\nquas enim ipsam minus"
    },
    {
        "postId": 2,
        "id": 10,
        "name": "eaque et deleniti atque tenetur ut quo ut",
        "email": "Carmen_Keeling@caroline.name",
        "body": "voluptate iusto quis nobis reprehenderit ipsum amet nulla\nquia quas dolores velit et non\naut quia necessitatibus\nnostrum quaerat nulla et accusamus nisi facilis"
    }
]''';

      List albumExamples = jsonDecode(jsonData);

      expect(
          albums.equals(albumExamples.map((e) => Album.fromJson(e)).toList()),
          true);
    });

    test('photo test', () async {
      final albumId = 1;
      final List<Photo> photos = await PhotoRepositoryImpl().getPhotos(albumId);

      //r 은 raw 데이터
      String jsonData = r'''[
{
"albumId": 1,
"id": 1,
"title": "accusamus beatae ad facilis cum similique qui sunt",
"url": "https://via.placeholder.com/600/92c952",
"thumbnailUrl": "https://via.placeholder.com/150/92c952"
},
{
"albumId": 1,
"id": 2,
"title": "reprehenderit est deserunt velit ipsam",
"url": "https://via.placeholder.com/600/771796",
"thumbnailUrl": "https://via.placeholder.com/150/771796"
},
{
"albumId": 1,
"id": 3,
"title": "officia porro iure quia iusto qui ipsa ut modi",
"url": "https://via.placeholder.com/600/24f355",
"thumbnailUrl": "https://via.placeholder.com/150/24f355"
},
{
"albumId": 1,
"id": 4,
"title": "culpa odio esse rerum omnis laboriosam voluptate repudiandae",
"url": "https://via.placeholder.com/600/d32776",
"thumbnailUrl": "https://via.placeholder.com/150/d32776"
},
{
"albumId": 1,
"id": 5,
"title": "natus nisi omnis corporis facere molestiae rerum in",
"url": "https://via.placeholder.com/600/f66b97",
"thumbnailUrl": "https://via.placeholder.com/150/f66b97"
},
{
"albumId": 1,
"id": 6,
"title": "accusamus ea aliquid et amet sequi nemo",
"url": "https://via.placeholder.com/600/56a8c2",
"thumbnailUrl": "https://via.placeholder.com/150/56a8c2"
},
{
"albumId": 1,
"id": 7,
"title": "officia delectus consequatur vero aut veniam explicabo molestias",
"url": "https://via.placeholder.com/600/b0f7cc",
"thumbnailUrl": "https://via.placeholder.com/150/b0f7cc"
},
{
"albumId": 1,
"id": 8,
"title": "aut porro officiis laborum odit ea laudantium corporis",
"url": "https://via.placeholder.com/600/54176f",
"thumbnailUrl": "https://via.placeholder.com/150/54176f"
},
{
"albumId": 1,
"id": 9,
"title": "qui eius qui autem sed",
"url": "https://via.placeholder.com/600/51aa97",
"thumbnailUrl": "https://via.placeholder.com/150/51aa97"
},
{
"albumId": 1,
"id": 10,
"title": "beatae et provident et ut vel",
"url": "https://via.placeholder.com/600/810b14",
"thumbnailUrl": "https://via.placeholder.com/150/810b14"
},
{
"albumId": 1,
"id": 11,
"title": "nihil at amet non hic quia qui",
"url": "https://via.placeholder.com/600/1ee8a4",
"thumbnailUrl": "https://via.placeholder.com/150/1ee8a4"
},
{
"albumId": 1,
"id": 12,
"title": "mollitia soluta ut rerum eos aliquam consequatur perspiciatis maiores",
"url": "https://via.placeholder.com/600/66b7d2",
"thumbnailUrl": "https://via.placeholder.com/150/66b7d2"
},
{
"albumId": 1,
"id": 13,
"title": "repudiandae iusto deleniti rerum",
"url": "https://via.placeholder.com/600/197d29",
"thumbnailUrl": "https://via.placeholder.com/150/197d29"
},
{
"albumId": 1,
"id": 14,
"title": "est necessitatibus architecto ut laborum",
"url": "https://via.placeholder.com/600/61a65",
"thumbnailUrl": "https://via.placeholder.com/150/61a65"
},
{
"albumId": 1,
"id": 15,
"title": "harum dicta similique quis dolore earum ex qui",
"url": "https://via.placeholder.com/600/f9cee5",
"thumbnailUrl": "https://via.placeholder.com/150/f9cee5"
},
{
"albumId": 1,
"id": 16,
"title": "iusto sunt nobis quasi veritatis quas expedita voluptatum deserunt",
"url": "https://via.placeholder.com/600/fdf73e",
"thumbnailUrl": "https://via.placeholder.com/150/fdf73e"
},
{
"albumId": 1,
"id": 17,
"title": "natus doloribus necessitatibus ipsa",
"url": "https://via.placeholder.com/600/9c184f",
"thumbnailUrl": "https://via.placeholder.com/150/9c184f"
},
{
"albumId": 1,
"id": 18,
"title": "laboriosam odit nam necessitatibus et illum dolores reiciendis",
"url": "https://via.placeholder.com/600/1fe46f",
"thumbnailUrl": "https://via.placeholder.com/150/1fe46f"
},
{
"albumId": 1,
"id": 19,
"title": "perferendis nesciunt eveniet et optio a",
"url": "https://via.placeholder.com/600/56acb2",
"thumbnailUrl": "https://via.placeholder.com/150/56acb2"
},
{
"albumId": 1,
"id": 20,
"title": "assumenda voluptatem laboriosam enim consequatur veniam placeat reiciendis error",
"url": "https://via.placeholder.com/600/8985dc",
"thumbnailUrl": "https://via.placeholder.com/150/8985dc"
},
{
"albumId": 1,
"id": 21,
"title": "ad et natus qui",
"url": "https://via.placeholder.com/600/5e12c6",
"thumbnailUrl": "https://via.placeholder.com/150/5e12c6"
},
{
"albumId": 1,
"id": 22,
"title": "et ea illo et sit voluptas animi blanditiis porro",
"url": "https://via.placeholder.com/600/45601a",
"thumbnailUrl": "https://via.placeholder.com/150/45601a"
},
{
"albumId": 1,
"id": 23,
"title": "harum velit vero totam",
"url": "https://via.placeholder.com/600/e924e6",
"thumbnailUrl": "https://via.placeholder.com/150/e924e6"
},
{
"albumId": 1,
"id": 24,
"title": "beatae officiis ut aut",
"url": "https://via.placeholder.com/600/8f209a",
"thumbnailUrl": "https://via.placeholder.com/150/8f209a"
},
{
"albumId": 1,
"id": 25,
"title": "facere non quis fuga fugit vitae",
"url": "https://via.placeholder.com/600/5e3a73",
"thumbnailUrl": "https://via.placeholder.com/150/5e3a73"
},
{
"albumId": 1,
"id": 26,
"title": "asperiores nobis voluptate qui",
"url": "https://via.placeholder.com/600/474645",
"thumbnailUrl": "https://via.placeholder.com/150/474645"
},
{
"albumId": 1,
"id": 27,
"title": "sit asperiores est quos quis nisi veniam error",
"url": "https://via.placeholder.com/600/c984bf",
"thumbnailUrl": "https://via.placeholder.com/150/c984bf"
},
{
"albumId": 1,
"id": 28,
"title": "non neque eligendi molestiae repudiandae illum voluptatem qui aut",
"url": "https://via.placeholder.com/600/392537",
"thumbnailUrl": "https://via.placeholder.com/150/392537"
},
{
"albumId": 1,
"id": 29,
"title": "aut ipsam quos ab placeat omnis",
"url": "https://via.placeholder.com/600/602b9e",
"thumbnailUrl": "https://via.placeholder.com/150/602b9e"
},
{
"albumId": 1,
"id": 30,
"title": "odio enim voluptatem quidem aut nihil illum",
"url": "https://via.placeholder.com/600/372c93",
"thumbnailUrl": "https://via.placeholder.com/150/372c93"
},
{
"albumId": 1,
"id": 31,
"title": "voluptate voluptates sequi",
"url": "https://via.placeholder.com/600/a7c272",
"thumbnailUrl": "https://via.placeholder.com/150/a7c272"
},
{
"albumId": 1,
"id": 32,
"title": "ad enim dignissimos voluptatem similique",
"url": "https://via.placeholder.com/600/c70a4d",
"thumbnailUrl": "https://via.placeholder.com/150/c70a4d"
},
{
"albumId": 1,
"id": 33,
"title": "culpa ipsam nobis qui fuga magni et mollitia",
"url": "https://via.placeholder.com/600/501fe1",
"thumbnailUrl": "https://via.placeholder.com/150/501fe1"
},
{
"albumId": 1,
"id": 34,
"title": "vitae est facere quia itaque adipisci perferendis id maiores",
"url": "https://via.placeholder.com/600/35185e",
"thumbnailUrl": "https://via.placeholder.com/150/35185e"
},
{
"albumId": 1,
"id": 35,
"title": "tenetur minus voluptatum et",
"url": "https://via.placeholder.com/600/c96cad",
"thumbnailUrl": "https://via.placeholder.com/150/c96cad"
},
{
"albumId": 1,
"id": 36,
"title": "expedita rerum eaque",
"url": "https://via.placeholder.com/600/4d564d",
"thumbnailUrl": "https://via.placeholder.com/150/4d564d"
},
{
"albumId": 1,
"id": 37,
"title": "totam voluptas iusto deserunt dolores",
"url": "https://via.placeholder.com/600/ea51da",
"thumbnailUrl": "https://via.placeholder.com/150/ea51da"
},
{
"albumId": 1,
"id": 38,
"title": "natus magnam iure rerum pariatur molestias dolore nisi",
"url": "https://via.placeholder.com/600/4f5b8d",
"thumbnailUrl": "https://via.placeholder.com/150/4f5b8d"
},
{
"albumId": 1,
"id": 39,
"title": "molestiae nam ullam et rerum doloribus",
"url": "https://via.placeholder.com/600/1e71a2",
"thumbnailUrl": "https://via.placeholder.com/150/1e71a2"
},
{
"albumId": 1,
"id": 40,
"title": "est quas voluptates dignissimos sint praesentium nisi recusandae",
"url": "https://via.placeholder.com/600/3a0b95",
"thumbnailUrl": "https://via.placeholder.com/150/3a0b95"
},
{
"albumId": 1,
"id": 41,
"title": "in voluptatem doloremque cum atque architecto deleniti",
"url": "https://via.placeholder.com/600/659403",
"thumbnailUrl": "https://via.placeholder.com/150/659403"
},
{
"albumId": 1,
"id": 42,
"title": "voluptatibus a autem molestias voluptas architecto culpa",
"url": "https://via.placeholder.com/600/ca50ac",
"thumbnailUrl": "https://via.placeholder.com/150/ca50ac"
},
{
"albumId": 1,
"id": 43,
"title": "eius hic autem ad beatae voluptas",
"url": "https://via.placeholder.com/600/6ad437",
"thumbnailUrl": "https://via.placeholder.com/150/6ad437"
},
{
"albumId": 1,
"id": 44,
"title": "neque eum provident et inventore sed ipsam dignissimos quo",
"url": "https://via.placeholder.com/600/29fe9f",
"thumbnailUrl": "https://via.placeholder.com/150/29fe9f"
},
{
"albumId": 1,
"id": 45,
"title": "praesentium fugit quis aut voluptatum commodi dolore corrupti",
"url": "https://via.placeholder.com/600/c4084a",
"thumbnailUrl": "https://via.placeholder.com/150/c4084a"
},
{
"albumId": 1,
"id": 46,
"title": "quidem maiores in quia fugit dolore explicabo occaecati",
"url": "https://via.placeholder.com/600/e9b68",
"thumbnailUrl": "https://via.placeholder.com/150/e9b68"
},
{
"albumId": 1,
"id": 47,
"title": "et soluta est",
"url": "https://via.placeholder.com/600/b4412f",
"thumbnailUrl": "https://via.placeholder.com/150/b4412f"
},
{
"albumId": 1,
"id": 48,
"title": "ut esse id",
"url": "https://via.placeholder.com/600/68e0a8",
"thumbnailUrl": "https://via.placeholder.com/150/68e0a8"
},
{
"albumId": 1,
"id": 49,
"title": "quasi quae est modi quis quam in impedit",
"url": "https://via.placeholder.com/600/2cd88b",
"thumbnailUrl": "https://via.placeholder.com/150/2cd88b"
},
{
"albumId": 1,
"id": 50,
"title": "et inventore quae ut tempore eius voluptatum",
"url": "https://via.placeholder.com/600/9e59da",
"thumbnailUrl": "https://via.placeholder.com/150/9e59da"
}
]''';

      List photoExamples = jsonDecode(jsonData);

      expect(
          photos.equals(photoExamples.map((e) => Photo.fromJson(e)).toList()),
          true);
    });

    test('todo repository completed only test', () async {
      final isCompleted = false;
      final List<Todo> todos =
          await TodoRepositoryImpl().getCompletedTodos(isCompleted);

      //r 은 raw 데이터
      String jsonData = r'''[
{
"userId": 1,
"id": 1,
"title": "delectus aut autem",
"completed": false
},
{
"userId": 1,
"id": 2,
"title": "quis ut nam facilis et officia qui",
"completed": false
},
{
"userId": 1,
"id": 3,
"title": "fugiat veniam minus",
"completed": false
},
{
"userId": 1,
"id": 5,
"title": "laboriosam mollitia et enim quasi adipisci quia provident illum",
"completed": false
},
{
"userId": 1,
"id": 6,
"title": "qui ullam ratione quibusdam voluptatem quia omnis",
"completed": false
},
{
"userId": 1,
"id": 7,
"title": "illo expedita consequatur quia in",
"completed": false
},
{
"userId": 1,
"id": 9,
"title": "molestiae perspiciatis ipsa",
"completed": false
},
{
"userId": 1,
"id": 13,
"title": "et doloremque nulla",
"completed": false
},
{
"userId": 1,
"id": 18,
"title": "dolorum est consequatur ea mollitia in culpa",
"completed": false
},
{
"userId": 2,
"id": 21,
"title": "suscipit repellat esse quibusdam voluptatem incidunt",
"completed": false
},
{
"userId": 2,
"id": 23,
"title": "et itaque necessitatibus maxime molestiae qui quas velit",
"completed": false
},
{
"userId": 2,
"id": 24,
"title": "adipisci non ad dicta qui amet quaerat doloribus ea",
"completed": false
},
{
"userId": 2,
"id": 28,
"title": "nesciunt totam sit blanditiis sit",
"completed": false
},
{
"userId": 2,
"id": 29,
"title": "laborum aut in quam",
"completed": false
},
{
"userId": 2,
"id": 31,
"title": "repudiandae totam in est sint facere fuga",
"completed": false
},
{
"userId": 2,
"id": 32,
"title": "earum doloribus ea doloremque quis",
"completed": false
},
{
"userId": 2,
"id": 33,
"title": "sint sit aut vero",
"completed": false
},
{
"userId": 2,
"id": 34,
"title": "porro aut necessitatibus eaque distinctio",
"completed": false
},
{
"userId": 2,
"id": 37,
"title": "sunt cum tempora",
"completed": false
},
{
"userId": 2,
"id": 38,
"title": "totam quia non",
"completed": false
},
{
"userId": 2,
"id": 39,
"title": "doloremque quibusdam asperiores libero corrupti illum qui omnis",
"completed": false
},
{
"userId": 3,
"id": 41,
"title": "aliquid amet impedit consequatur aspernatur placeat eaque fugiat suscipit",
"completed": false
},
{
"userId": 3,
"id": 42,
"title": "rerum perferendis error quia ut eveniet",
"completed": false
},
{
"userId": 3,
"id": 45,
"title": "velit soluta adipisci molestias reiciendis harum",
"completed": false
},
{
"userId": 3,
"id": 46,
"title": "vel voluptatem repellat nihil placeat corporis",
"completed": false
},
{
"userId": 3,
"id": 47,
"title": "nam qui rerum fugiat accusamus",
"completed": false
},
{
"userId": 3,
"id": 48,
"title": "sit reprehenderit omnis quia",
"completed": false
},
{
"userId": 3,
"id": 49,
"title": "ut necessitatibus aut maiores debitis officia blanditiis velit et",
"completed": false
},
{
"userId": 3,
"id": 51,
"title": "distinctio exercitationem ab doloribus",
"completed": false
},
{
"userId": 3,
"id": 52,
"title": "nesciunt dolorum quis recusandae ad pariatur ratione",
"completed": false
},
{
"userId": 3,
"id": 53,
"title": "qui labore est occaecati recusandae aliquid quam",
"completed": false
},
{
"userId": 3,
"id": 57,
"title": "pariatur et magnam ea doloribus similique voluptatem rerum quia",
"completed": false
},
{
"userId": 3,
"id": 58,
"title": "est dicta totam qui explicabo doloribus qui dignissimos",
"completed": false
},
{
"userId": 3,
"id": 59,
"title": "perspiciatis velit id laborum placeat iusto et aliquam odio",
"completed": false
},
{
"userId": 4,
"id": 62,
"title": "et placeat et tempore aspernatur sint numquam",
"completed": false
},
{
"userId": 4,
"id": 64,
"title": "voluptas consequatur qui ut quia magnam nemo esse",
"completed": false
},
{
"userId": 4,
"id": 65,
"title": "fugiat pariatur ratione ut asperiores necessitatibus magni",
"completed": false
},
{
"userId": 4,
"id": 66,
"title": "rerum eum molestias autem voluptatum sit optio",
"completed": false
},
{
"userId": 4,
"id": 67,
"title": "quia voluptatibus voluptatem quos similique maiores repellat",
"completed": false
},
{
"userId": 4,
"id": 68,
"title": "aut id perspiciatis voluptatem iusto",
"completed": false
},
{
"userId": 4,
"id": 69,
"title": "doloribus sint dolorum ab adipisci itaque dignissimos aliquam suscipit",
"completed": false
},
{
"userId": 4,
"id": 70,
"title": "ut sequi accusantium et mollitia delectus sunt",
"completed": false
},
{
"userId": 4,
"id": 71,
"title": "aut velit saepe ullam",
"completed": false
},
{
"userId": 4,
"id": 72,
"title": "praesentium facilis facere quis harum voluptatibus voluptatem eum",
"completed": false
},
{
"userId": 4,
"id": 74,
"title": "expedita tempore nobis eveniet laborum maiores",
"completed": false
},
{
"userId": 4,
"id": 75,
"title": "occaecati adipisci est possimus totam",
"completed": false
},
{
"userId": 4,
"id": 77,
"title": "maiores aut nesciunt delectus exercitationem vel assumenda eligendi at",
"completed": false
},
{
"userId": 4,
"id": 78,
"title": "reiciendis est magnam amet nemo iste recusandae impedit quaerat",
"completed": false
},
{
"userId": 5,
"id": 82,
"title": "voluptates eum voluptas et dicta",
"completed": false
},
{
"userId": 5,
"id": 84,
"title": "sunt veritatis ut voluptate",
"completed": false
},
{
"userId": 5,
"id": 88,
"title": "vitae aut excepturi laboriosam sint aliquam et et accusantium",
"completed": false
},
{
"userId": 5,
"id": 94,
"title": "facilis modi saepe mollitia",
"completed": false
},
{
"userId": 5,
"id": 96,
"title": "nobis suscipit ducimus enim asperiores voluptas",
"completed": false
},
{
"userId": 5,
"id": 97,
"title": "dolorum laboriosam eos qui iure aliquam",
"completed": false
},
{
"userId": 5,
"id": 99,
"title": "neque voluptates ratione",
"completed": false
},
{
"userId": 5,
"id": 100,
"title": "excepturi a et neque qui expedita vel voluptate",
"completed": false
},
{
"userId": 6,
"id": 101,
"title": "explicabo enim cumque porro aperiam occaecati minima",
"completed": false
},
{
"userId": 6,
"id": 102,
"title": "sed ab consequatur",
"completed": false
},
{
"userId": 6,
"id": 103,
"title": "non sunt delectus illo nulla tenetur enim omnis",
"completed": false
},
{
"userId": 6,
"id": 104,
"title": "excepturi non laudantium quo",
"completed": false
},
{
"userId": 6,
"id": 107,
"title": "praesentium facilis omnis laudantium fugit ad iusto nihil nesciunt",
"completed": false
},
{
"userId": 6,
"id": 111,
"title": "magni accusantium labore et id quis provident",
"completed": false
},
{
"userId": 6,
"id": 112,
"title": "consectetur impedit quisquam qui deserunt non rerum consequuntur eius",
"completed": false
},
{
"userId": 6,
"id": 113,
"title": "quia atque aliquam sunt impedit voluptatum rerum assumenda nisi",
"completed": false
},
{
"userId": 6,
"id": 114,
"title": "cupiditate quos possimus corporis quisquam exercitationem beatae",
"completed": false
},
{
"userId": 6,
"id": 115,
"title": "sed et ea eum",
"completed": false
},
{
"userId": 6,
"id": 117,
"title": "sequi quae est et qui qui eveniet asperiores",
"completed": false
},
{
"userId": 6,
"id": 118,
"title": "quia modi consequatur vero fugiat",
"completed": false
},
{
"userId": 6,
"id": 119,
"title": "corporis ducimus ea perspiciatis iste",
"completed": false
},
{
"userId": 6,
"id": 120,
"title": "dolorem laboriosam vel voluptas et aliquam quasi",
"completed": false
},
{
"userId": 7,
"id": 123,
"title": "esse et quis iste est earum aut impedit",
"completed": false
},
{
"userId": 7,
"id": 124,
"title": "qui consectetur id",
"completed": false
},
{
"userId": 7,
"id": 125,
"title": "aut quasi autem iste tempore illum possimus",
"completed": false
},
{
"userId": 7,
"id": 128,
"title": "eius omnis est qui voluptatem autem",
"completed": false
},
{
"userId": 7,
"id": 129,
"title": "rerum culpa quis harum",
"completed": false
},
{
"userId": 7,
"id": 131,
"title": "qui ea incidunt quis",
"completed": false
},
{
"userId": 7,
"id": 134,
"title": "molestiae doloribus et laborum quod ea",
"completed": false
},
{
"userId": 7,
"id": 135,
"title": "facere ipsa nam eum voluptates reiciendis vero qui",
"completed": false
},
{
"userId": 7,
"id": 136,
"title": "asperiores illo tempora fuga sed ut quasi adipisci",
"completed": false
},
{
"userId": 7,
"id": 137,
"title": "qui sit non",
"completed": false
},
{
"userId": 7,
"id": 139,
"title": "consequatur doloribus id possimus voluptas a voluptatem",
"completed": false
},
{
"userId": 8,
"id": 143,
"title": "eum non recusandae cupiditate animi",
"completed": false
},
{
"userId": 8,
"id": 144,
"title": "ut eum exercitationem sint",
"completed": false
},
{
"userId": 8,
"id": 145,
"title": "beatae qui ullam incidunt voluptatem non nisi aliquam",
"completed": false
},
{
"userId": 8,
"id": 148,
"title": "esse quas et quo quasi exercitationem",
"completed": false
},
{
"userId": 8,
"id": 149,
"title": "animi voluptas quod perferendis est",
"completed": false
},
{
"userId": 8,
"id": 150,
"title": "eos amet tempore laudantium fugit a",
"completed": false
},
{
"userId": 8,
"id": 152,
"title": "odit eligendi recusandae doloremque cumque non",
"completed": false
},
{
"userId": 8,
"id": 153,
"title": "ea aperiam consequatur qui repellat eos",
"completed": false
},
{
"userId": 8,
"id": 160,
"title": "et praesentium aliquam est",
"completed": false
},
{
"userId": 9,
"id": 163,
"title": "natus corrupti maxime laudantium et voluptatem laboriosam odit",
"completed": false
},
{
"userId": 9,
"id": 164,
"title": "reprehenderit quos aut aut consequatur est sed",
"completed": false
},
{
"userId": 9,
"id": 165,
"title": "fugiat perferendis sed aut quidem",
"completed": false
},
{
"userId": 9,
"id": 166,
"title": "quos quo possimus suscipit minima ut",
"completed": false
},
{
"userId": 9,
"id": 167,
"title": "et quis minus quo a asperiores molestiae",
"completed": false
},
{
"userId": 9,
"id": 168,
"title": "recusandae quia qui sunt libero",
"completed": false
},
{
"userId": 9,
"id": 170,
"title": "quisquam aliquam quia doloribus aut",
"completed": false
},
{
"userId": 9,
"id": 172,
"title": "et provident amet rerum consectetur et voluptatum",
"completed": false
},
{
"userId": 9,
"id": 173,
"title": "harum ad aperiam quis",
"completed": false
},
{
"userId": 9,
"id": 174,
"title": "similique aut quo",
"completed": false
},
{
"userId": 9,
"id": 176,
"title": "magni soluta corrupti ut maiores rem quidem",
"completed": false
},
{
"userId": 9,
"id": 177,
"title": "et placeat temporibus voluptas est tempora quos quibusdam",
"completed": false
},
{
"userId": 10,
"id": 181,
"title": "ut cupiditate sequi aliquam fuga maiores",
"completed": false
},
{
"userId": 10,
"id": 184,
"title": "molestias modi perferendis perspiciatis",
"completed": false
},
{
"userId": 10,
"id": 185,
"title": "voluptates dignissimos sed doloribus animi quaerat aut",
"completed": false
},
{
"userId": 10,
"id": 186,
"title": "explicabo odio est et",
"completed": false
},
{
"userId": 10,
"id": 187,
"title": "consequuntur animi possimus",
"completed": false
},
{
"userId": 10,
"id": 192,
"title": "ut quas possimus exercitationem sint voluptates",
"completed": false
},
{
"userId": 10,
"id": 194,
"title": "sed ut vero sit molestiae",
"completed": false
},
{
"userId": 10,
"id": 200,
"title": "ipsam aperiam voluptates qui",
"completed": false
}
]''';

      List todoExamples = jsonDecode(jsonData);

      expect(todos.equals(todoExamples.map((e) => Todo.fromJson(e)).toList()),
          true);
    });

    test('user repository top10 test', () async {
      bool isAscending = true;
      final List<User> users =
          await UserRepositoryImpl().getUsersTop10ByUserName();

      for (int i = 1; i < users.length; i++) {
        if (users[i].userName.compareTo(users[i - 1].userName) == 0) {
          return isAscending = false;
        }
      }

      expect(isAscending, true);
    });

    test('post repository paging test', () async {
      final List<Post> posts =
          await PostRepositoryImpl().getPosts(page: 2, limit: 10);

      expect(posts.length == 10, true);
      expect(posts.first.id == 11 && posts.last.id == 20, true);
    });
  });
}
