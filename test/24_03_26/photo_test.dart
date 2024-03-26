import 'package:collection/collection.dart';
import 'package:learn_dart_together/24_03_26/model/photo.dart';
import 'package:learn_dart_together/24_03_26/repository/photo_repo_impl.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('get photos test', () async {
    List<Photo> photos = await PhotoRepositoryImpl().getPhotos(2);

    final expected = expectedPhotos.map(Photo.fromJson).toList();

    expect(photos.equals(expected), true);
  });
}

final expectedPhotos = [
  {
    "albumId": 2,
    "id": 51,
    "title": "non sunt voluptatem placeat consequuntur rem incidunt",
    "url": "https://via.placeholder.com/600/8e973b",
    "thumbnailUrl": "https://via.placeholder.com/150/8e973b"
  },
  {
    "albumId": 2,
    "id": 52,
    "title": "eveniet pariatur quia nobis reiciendis laboriosam ea",
    "url": "https://via.placeholder.com/600/121fa4",
    "thumbnailUrl": "https://via.placeholder.com/150/121fa4"
  },
  {
    "albumId": 2,
    "id": 53,
    "title": "soluta et harum aliquid officiis ab omnis consequatur",
    "url": "https://via.placeholder.com/600/6efc5f",
    "thumbnailUrl": "https://via.placeholder.com/150/6efc5f"
  },
  {
    "albumId": 2,
    "id": 54,
    "title": "ut ex quibusdam dolore mollitia",
    "url": "https://via.placeholder.com/600/aa8f2e",
    "thumbnailUrl": "https://via.placeholder.com/150/aa8f2e"
  },
  {
    "albumId": 2,
    "id": 55,
    "title": "voluptatem consequatur totam qui aut iure est vel",
    "url": "https://via.placeholder.com/600/5e04a4",
    "thumbnailUrl": "https://via.placeholder.com/150/5e04a4"
  },
  {
    "albumId": 2,
    "id": 56,
    "title": "vel voluptatem esse consequuntur est officia quo aut quisquam",
    "url": "https://via.placeholder.com/600/f9f067",
    "thumbnailUrl": "https://via.placeholder.com/150/f9f067"
  },
  {
    "albumId": 2,
    "id": 57,
    "title": "vero est optio expedita quis ut molestiae",
    "url": "https://via.placeholder.com/600/95acce",
    "thumbnailUrl": "https://via.placeholder.com/150/95acce"
  },
  {
    "albumId": 2,
    "id": 58,
    "title": "rem pariatur facere eaque",
    "url": "https://via.placeholder.com/600/cde4c1",
    "thumbnailUrl": "https://via.placeholder.com/150/cde4c1"
  },
  {
    "albumId": 2,
    "id": 59,
    "title": "modi totam dolor eaque et ipsum est cupiditate",
    "url": "https://via.placeholder.com/600/a46a91",
    "thumbnailUrl": "https://via.placeholder.com/150/a46a91"
  },
  {
    "albumId": 2,
    "id": 60,
    "title": "ea enim temporibus asperiores placeat consectetur commodi ullam",
    "url": "https://via.placeholder.com/600/323599",
    "thumbnailUrl": "https://via.placeholder.com/150/323599"
  },
  {
    "albumId": 2,
    "id": 61,
    "title": "quia minus sed eveniet accusantium incidunt beatae odio",
    "url": "https://via.placeholder.com/600/e403d1",
    "thumbnailUrl": "https://via.placeholder.com/150/e403d1"
  },
  {
    "albumId": 2,
    "id": 62,
    "title": "dolorem cumque quo nihil inventore enim",
    "url": "https://via.placeholder.com/600/65ad4f",
    "thumbnailUrl": "https://via.placeholder.com/150/65ad4f"
  },
  {
    "albumId": 2,
    "id": 63,
    "title": "facere animi autem quod dolor",
    "url": "https://via.placeholder.com/600/4e557c",
    "thumbnailUrl": "https://via.placeholder.com/150/4e557c"
  },
  {
    "albumId": 2,
    "id": 64,
    "title": "doloremque culpa quia",
    "url": "https://via.placeholder.com/600/cd5a92",
    "thumbnailUrl": "https://via.placeholder.com/150/cd5a92"
  },
  {
    "albumId": 2,
    "id": 65,
    "title": "sed voluptatum enim eaque cumque qui sunt",
    "url": "https://via.placeholder.com/600/149540",
    "thumbnailUrl": "https://via.placeholder.com/150/149540"
  },
  {
    "albumId": 2,
    "id": 66,
    "title": "provident rerum voluptatem illo asperiores qui maiores",
    "url": "https://via.placeholder.com/600/ee0a7e",
    "thumbnailUrl": "https://via.placeholder.com/150/ee0a7e"
  },
  {
    "albumId": 2,
    "id": 67,
    "title": "veritatis labore ipsum unde aut quam dolores",
    "url": "https://via.placeholder.com/600/1279e9",
    "thumbnailUrl": "https://via.placeholder.com/150/1279e9"
  },
  {
    "albumId": 2,
    "id": 68,
    "title": "architecto aut quod qui ullam vitae expedita delectus",
    "url": "https://via.placeholder.com/600/e9603b",
    "thumbnailUrl": "https://via.placeholder.com/150/e9603b"
  },
  {
    "albumId": 2,
    "id": 69,
    "title": "et autem dolores aut porro est qui",
    "url": "https://via.placeholder.com/600/46e3b1",
    "thumbnailUrl": "https://via.placeholder.com/150/46e3b1"
  },
  {
    "albumId": 2,
    "id": 70,
    "title": "quam quos dolor eum ea in",
    "url": "https://via.placeholder.com/600/7375af",
    "thumbnailUrl": "https://via.placeholder.com/150/7375af"
  },
  {
    "albumId": 2,
    "id": 71,
    "title": "illo qui vel laboriosam vel fugit deserunt",
    "url": "https://via.placeholder.com/600/363789",
    "thumbnailUrl": "https://via.placeholder.com/150/363789"
  },
  {
    "albumId": 2,
    "id": 72,
    "title": "iusto sint enim nesciunt facilis exercitationem",
    "url": "https://via.placeholder.com/600/45935c",
    "thumbnailUrl": "https://via.placeholder.com/150/45935c"
  },
  {
    "albumId": 2,
    "id": 73,
    "title": "rerum exercitationem libero dolor",
    "url": "https://via.placeholder.com/600/1224bd",
    "thumbnailUrl": "https://via.placeholder.com/150/1224bd"
  },
  {
    "albumId": 2,
    "id": 74,
    "title": "eligendi quas consequatur aut consequuntur",
    "url": "https://via.placeholder.com/600/65ac19",
    "thumbnailUrl": "https://via.placeholder.com/150/65ac19"
  },
  {
    "albumId": 2,
    "id": 75,
    "title": "aut magni quibusdam cupiditate ea",
    "url": "https://via.placeholder.com/600/a9ef52",
    "thumbnailUrl": "https://via.placeholder.com/150/a9ef52"
  },
  {
    "albumId": 2,
    "id": 76,
    "title": "magni nulla et dolores",
    "url": "https://via.placeholder.com/600/7644fe",
    "thumbnailUrl": "https://via.placeholder.com/150/7644fe"
  },
  {
    "albumId": 2,
    "id": 77,
    "title": "ipsum consequatur vel omnis mollitia repellat dolores quasi",
    "url": "https://via.placeholder.com/600/36d137",
    "thumbnailUrl": "https://via.placeholder.com/150/36d137"
  },
  {
    "albumId": 2,
    "id": 78,
    "title": "aperiam aut est amet tenetur et dolorem",
    "url": "https://via.placeholder.com/600/637984",
    "thumbnailUrl": "https://via.placeholder.com/150/637984"
  },
  {
    "albumId": 2,
    "id": 79,
    "title": "est vel et laboriosam quo aspernatur distinctio molestiae",
    "url": "https://via.placeholder.com/600/c611a9",
    "thumbnailUrl": "https://via.placeholder.com/150/c611a9"
  },
  {
    "albumId": 2,
    "id": 80,
    "title": "et corrupti nihil cumque",
    "url": "https://via.placeholder.com/600/a0c998",
    "thumbnailUrl": "https://via.placeholder.com/150/a0c998"
  },
  {
    "albumId": 2,
    "id": 81,
    "title": "error magni fugiat dolorem impedit molestiae illo ullam debitis",
    "url": "https://via.placeholder.com/600/31a74c",
    "thumbnailUrl": "https://via.placeholder.com/150/31a74c"
  },
  {
    "albumId": 2,
    "id": 82,
    "title": "voluptate voluptas molestias vitae illo iusto",
    "url": "https://via.placeholder.com/600/88b703",
    "thumbnailUrl": "https://via.placeholder.com/150/88b703"
  },
  {
    "albumId": 2,
    "id": 83,
    "title": "quia quasi enim voluptatem repellat sit sint",
    "url": "https://via.placeholder.com/600/a19891",
    "thumbnailUrl": "https://via.placeholder.com/150/a19891"
  },
  {
    "albumId": 2,
    "id": 84,
    "title": "aliquam dolorem ut modi ratione et assumenda impedit",
    "url": "https://via.placeholder.com/600/b5205d",
    "thumbnailUrl": "https://via.placeholder.com/150/b5205d"
  },
  {
    "albumId": 2,
    "id": 85,
    "title": "ullam delectus architecto sint error",
    "url": "https://via.placeholder.com/600/eb7e7f",
    "thumbnailUrl": "https://via.placeholder.com/150/eb7e7f"
  },
  {
    "albumId": 2,
    "id": 86,
    "title": "qui vel ut odio consequuntur",
    "url": "https://via.placeholder.com/600/fd5751",
    "thumbnailUrl": "https://via.placeholder.com/150/fd5751"
  },
  {
    "albumId": 2,
    "id": 87,
    "title": "eos nihil sunt accusantium omnis",
    "url": "https://via.placeholder.com/600/224566",
    "thumbnailUrl": "https://via.placeholder.com/150/224566"
  },
  {
    "albumId": 2,
    "id": 88,
    "title": "inventore veritatis magnam enim quasi",
    "url": "https://via.placeholder.com/600/75334a",
    "thumbnailUrl": "https://via.placeholder.com/150/75334a"
  },
  {
    "albumId": 2,
    "id": 89,
    "title": "id at cum incidunt nulla dolor vero tenetur",
    "url": "https://via.placeholder.com/600/21d35",
    "thumbnailUrl": "https://via.placeholder.com/150/21d35"
  },
  {
    "albumId": 2,
    "id": 90,
    "title": "et quae eligendi vitae maxime in",
    "url": "https://via.placeholder.com/600/bfe0dc",
    "thumbnailUrl": "https://via.placeholder.com/150/bfe0dc"
  },
  {
    "albumId": 2,
    "id": 91,
    "title": "sunt quo laborum commodi porro consequatur nam delectus et",
    "url": "https://via.placeholder.com/600/40591",
    "thumbnailUrl": "https://via.placeholder.com/150/40591"
  },
  {
    "albumId": 2,
    "id": 92,
    "title": "quod non quae",
    "url": "https://via.placeholder.com/600/de79c7",
    "thumbnailUrl": "https://via.placeholder.com/150/de79c7"
  },
  {
    "albumId": 2,
    "id": 93,
    "title": "molestias et aliquam natus repellendus accusamus dolore",
    "url": "https://via.placeholder.com/600/2edde0",
    "thumbnailUrl": "https://via.placeholder.com/150/2edde0"
  },
  {
    "albumId": 2,
    "id": 94,
    "title": "et quisquam aspernatur",
    "url": "https://via.placeholder.com/600/cc12f5",
    "thumbnailUrl": "https://via.placeholder.com/150/cc12f5"
  },
  {
    "albumId": 2,
    "id": 95,
    "title": "magni odio non",
    "url": "https://via.placeholder.com/600/9cda61",
    "thumbnailUrl": "https://via.placeholder.com/150/9cda61"
  },
  {
    "albumId": 2,
    "id": 96,
    "title": "dolore esse a in eos sed",
    "url": "https://via.placeholder.com/600/1fb08b",
    "thumbnailUrl": "https://via.placeholder.com/150/1fb08b"
  },
  {
    "albumId": 2,
    "id": 97,
    "title": "labore magnam officiis nemo et",
    "url": "https://via.placeholder.com/600/e2223e",
    "thumbnailUrl": "https://via.placeholder.com/150/e2223e"
  },
  {
    "albumId": 2,
    "id": 98,
    "title": "sed commodi libero id nesciunt modi vitae",
    "url": "https://via.placeholder.com/600/a77d08",
    "thumbnailUrl": "https://via.placeholder.com/150/a77d08"
  },
  {
    "albumId": 2,
    "id": 99,
    "title": "magnam dolor sed enim vel optio consequuntur",
    "url": "https://via.placeholder.com/600/b04f2e",
    "thumbnailUrl": "https://via.placeholder.com/150/b04f2e"
  },
  {
    "albumId": 2,
    "id": 100,
    "title": "et qui rerum",
    "url": "https://via.placeholder.com/600/14ba42",
    "thumbnailUrl": "https://via.placeholder.com/150/14ba42"
  }
];
