import 'package:learn_dart_together/240402/exam_02/dto/photo_result_dto.dart';
import 'package:learn_dart_together/240402/exam_02/mapper/photo_mapper.dart';
import 'package:learn_dart_together/240402/exam_02/model/photo.dart';
import 'package:learn_dart_together/240402/exam_02/repository/photo_repository.dart';
import 'package:learn_dart_together/240402/exam_02/result.dart';
import 'package:test/test.dart';

void main() {
  test('바보 에러 체크', () async {
    PhotoRepository repository = MockPhotoRepository();
    // PhotoRepository repository = PhotoRepositoryImpl(PhotoDataSource());

    final result = await repository.getPhotos('바보');

    switch (result) {
      case Success():
        break;
      case Error():
        expect(result.message, '비속어를 사용할 수 없습니다');
    }
  });

  test('apple 정상 체크', () async {
    PhotoRepository repository = MockPhotoRepository();
    // PhotoRepository repository = PhotoRepositoryImpl(PhotoDataSource());

    final result = await repository.getPhotos('apple');

    final dto = PhotoResultDto.fromJson(appleJson);
    final expected = dto.hits!.map((e) => e.toPhoto()).toList();

    switch (result) {
      case Success():
        expect(result.data[0] == expected[0], true);
        expect(result.data[1] == expected[1], true);
        expect(result.data[18] == expected[18], true);
        expect(result.data[19] == expected[19], true);
      case Error():
    }
  });
}

class MockPhotoRepository implements PhotoRepository {
  @override
  Future<Result<List<Photo>>> getPhotos(String query) async {
    try {
      if (query.contains('바보')) {
        return Result.error('비속어를 사용할 수 없습니다');
      }

      final dto = PhotoResultDto.fromJson(appleJson);
      if (dto.hits == null) {
        return Result.error('hits null');
      }

      return Result.success(dto.hits!.map((e) => e.toPhoto()).toList());
    } catch (e) {
      return Result.error('알 수 없는 네트워크 에러');
    }
  }
}

final appleJson = {
  "total": 9402,
  "totalHits": 500,
  "hits": [
    {
      "id": 1122537,
      "pageURL":
          "https://pixabay.com/photos/apple-water-droplets-fruit-moist-1122537/",
      "type": "photo",
      "tags": "apple, water droplets, fruit",
      "previewURL":
          "https://cdn.pixabay.com/photo/2016/01/05/13/58/apple-1122537_150.jpg",
      "previewWidth": 150,
      "previewHeight": 95,
      "webformatURL":
          "https://pixabay.com/get/gf1aec04ea0a914f12b15e34b45d18a9a3ecaaf1a5d8a1243335d0a18aaa1c20871c404091d5ccedc5d8d27580cc45ae404d4ad462517511bbf387c679a040942_640.jpg",
      "webformatWidth": 640,
      "webformatHeight": 409,
      "largeImageURL":
          "https://pixabay.com/get/ga8dd65a9f087ef9a4b668674adad9876bee0cfe7781b275cbcf3869eb78ef7c5ec5e149569a347278c115cfbee5898bfaf154d8c719681549c22de173f151153_1280.jpg",
      "imageWidth": 4752,
      "imageHeight": 3044,
      "imageSize": 5213632,
      "views": 389467,
      "downloads": 235651,
      "collections": 1158,
      "likes": 1261,
      "comments": 199,
      "user_id": 1445608,
      "user": "mploscar",
      "userImageURL":
          "https://cdn.pixabay.com/user/2016/01/05/14-08-20-943_250x250.jpg"
    },
    {
      "id": 256261,
      "pageURL":
          "https://pixabay.com/photos/apple-books-still-life-fruit-food-256261/",
      "type": "photo",
      "tags": "apple, books, still life",
      "previewURL":
          "https://cdn.pixabay.com/photo/2014/02/01/17/28/apple-256261_150.jpg",
      "previewWidth": 150,
      "previewHeight": 99,
      "webformatURL":
          "https://pixabay.com/get/gfe8bcbc1bbf20c23c9011837f78e61541a13b1261852cf98ae8cb7e4fb9781447d9bb5730fc02ce72239dc88d192af6c_640.jpg",
      "webformatWidth": 640,
      "webformatHeight": 423,
      "largeImageURL":
          "https://pixabay.com/get/g65ff2dfa15b06e0e6f4b91b5f36aa590b0f0f4ed0744732234c6aa96bc5bdfb5e766583462846d901a1ebee5640f215cd8697df7944aa12c645841312c398183_1280.jpg",
      "imageWidth": 4928,
      "imageHeight": 3264,
      "imageSize": 2987083,
      "views": 590886,
      "downloads": 328792,
      "collections": 1021,
      "likes": 1039,
      "comments": 254,
      "user_id": 143740,
      "user": "jarmoluk",
      "userImageURL":
          "https://cdn.pixabay.com/user/2019/09/18/07-14-26-24_250x250.jpg"
    },
    {
      "id": 1873078,
      "pageURL":
          "https://pixabay.com/photos/apples-orchard-apple-trees-1873078/",
      "type": "photo",
      "tags": "apples, orchard, apple trees",
      "previewURL":
          "https://cdn.pixabay.com/photo/2016/11/30/15/23/apples-1873078_150.jpg",
      "previewWidth": 150,
      "previewHeight": 95,
      "webformatURL":
          "https://pixabay.com/get/g37fade90bd493ba5b6f0d732ad48a0d77836e6f0297b59828f85654fdc192e0a89c9ff20719a74ac9886dd374608b2673f53d4d36e8460853d1260762b9db619_640.jpg",
      "webformatWidth": 640,
      "webformatHeight": 408,
      "largeImageURL":
          "https://pixabay.com/get/g423df4cc6a1c6b4b2741c7e3ff15c34b89a0e65a7e984bcec96d41d9453e5782a7277e938da7b03122ad4e12fcc1e2dc79fb6b78c93b63dc580b5bcf34f2cd62_1280.jpg",
      "imageWidth": 3212,
      "imageHeight": 2051,
      "imageSize": 2581012,
      "views": 539672,
      "downloads": 331627,
      "collections": 1278,
      "likes": 1315,
      "comments": 197,
      "user_id": 3890388,
      "user": "lumix2004",
      "userImageURL": ""
    },
    {
      "id": 1868496,
      "pageURL":
          "https://pixabay.com/photos/apple-computer-desk-workspace-1868496/",
      "type": "photo",
      "tags": "apple, computer, desk",
      "previewURL":
          "https://cdn.pixabay.com/photo/2016/11/29/08/41/apple-1868496_150.jpg",
      "previewWidth": 150,
      "previewHeight": 99,
      "webformatURL":
          "https://pixabay.com/get/g190cdaa8eff999ec8965ff9de5df4fc7a345196e8fc7db5be84953415cba33486059cf951a841779256df1ebc312bd66f8fffb3ed535fde19a64efab88f5015a_640.jpg",
      "webformatWidth": 640,
      "webformatHeight": 426,
      "largeImageURL":
          "https://pixabay.com/get/g879bc01eb9bb364cf2ea3bdfc0910816dd234975f654ed184164f0acb3348b79fb17def7916607527cf198717d22d665327fbd4aa95f3ddd4492cf27d4981649_1280.jpg",
      "imageWidth": 5184,
      "imageHeight": 3456,
      "imageSize": 2735519,
      "views": 816057,
      "downloads": 606684,
      "collections": 1539,
      "likes": 1178,
      "comments": 292,
      "user_id": 2286921,
      "user": "Pexels",
      "userImageURL":
          "https://cdn.pixabay.com/user/2016/03/26/22-06-36-459_250x250.jpg"
    },
    {
      "id": 634572,
      "pageURL":
          "https://pixabay.com/photos/apples-fruits-red-ripe-vitamins-634572/",
      "type": "photo",
      "tags": "apples, fruits, red",
      "previewURL":
          "https://cdn.pixabay.com/photo/2015/02/13/00/43/apples-634572_150.jpg",
      "previewWidth": 100,
      "previewHeight": 150,
      "webformatURL":
          "https://pixabay.com/get/g2dcc8a2af689960f6abd956622d3aec5d0f4a201cf8486bf498d3bcacdfb0fcd94a9206e0b5a9afd001df3dd7cc7f5b1_640.jpg",
      "webformatWidth": 427,
      "webformatHeight": 640,
      "largeImageURL":
          "https://pixabay.com/get/g661515ad6b192a490f303c79458263bc1d42cdd28958bda871152526b68cb3cea9c00b1ce565f01169288df2a472f2137e6267316682467a151f9efe75db63f1_1280.jpg",
      "imageWidth": 3345,
      "imageHeight": 5017,
      "imageSize": 811238,
      "views": 563538,
      "downloads": 345825,
      "collections": 1392,
      "likes": 2478,
      "comments": 209,
      "user_id": 752536,
      "user": "Desertrose7",
      "userImageURL":
          "https://cdn.pixabay.com/user/2016/03/14/13-25-18-933_250x250.jpg"
    },
    {
      "id": 2788599,
      "pageURL":
          "https://pixabay.com/photos/apples-red-apple-ripe-apple-orchard-2788599/",
      "type": "photo",
      "tags": "apples, red apple, ripe",
      "previewURL":
          "https://cdn.pixabay.com/photo/2017/09/26/13/21/apples-2788599_150.jpg",
      "previewWidth": 150,
      "previewHeight": 99,
      "webformatURL":
          "https://pixabay.com/get/ga5c1980c8fb1fb1275299701d3d6b03f3b42a40bafd06bfc39c0117ffc0fe422145b2d5148b1fba5405c285f89fb67392a965727dcf53c567f5a86fe3ac13145_640.jpg",
      "webformatWidth": 640,
      "webformatHeight": 426,
      "largeImageURL":
          "https://pixabay.com/get/ga1448e66dd8af64e2f620498ba6da4c939c77377db39a15f831397c8d244db4d83973b9dbaa83d81037a40791773ec81fae0b6254b01543e58f4de89ed937840_1280.jpg",
      "imageWidth": 6000,
      "imageHeight": 4000,
      "imageSize": 3660484,
      "views": 159112,
      "downloads": 89007,
      "collections": 585,
      "likes": 642,
      "comments": 75,
      "user_id": 2364555,
      "user": "NoName_13",
      "userImageURL":
          "https://cdn.pixabay.com/user/2022/12/12/07-40-59-226_250x250.jpg"
    },
    {
      "id": 256263,
      "pageURL":
          "https://pixabay.com/photos/apple-books-classroom-red-apple-256263/",
      "type": "photo",
      "tags": "apple, books, classroom",
      "previewURL":
          "https://cdn.pixabay.com/photo/2014/02/01/17/28/apple-256263_150.jpg",
      "previewWidth": 150,
      "previewHeight": 99,
      "webformatURL":
          "https://pixabay.com/get/gac2bebdd441fec53d3374d5bac9a573cc79670fc61a3d558ac26db4fcb5cefc0ebcc51a2b9834170926dba9b5842af32_640.jpg",
      "webformatWidth": 640,
      "webformatHeight": 423,
      "largeImageURL":
          "https://pixabay.com/get/gbb01009db71b69d7620b6b4a275b1a4e7847918852d0272bbc6c03f4ea025488cd70d1a6681bca6a7485dc894b1615b334c468d340ac1e30a9a2a205f36f7697_1280.jpg",
      "imageWidth": 4928,
      "imageHeight": 3264,
      "imageSize": 2864273,
      "views": 277242,
      "downloads": 158448,
      "collections": 621,
      "likes": 555,
      "comments": 109,
      "user_id": 143740,
      "user": "jarmoluk",
      "userImageURL":
          "https://cdn.pixabay.com/user/2019/09/18/07-14-26-24_250x250.jpg"
    },
    {
      "id": 2788662,
      "pageURL":
          "https://pixabay.com/photos/apple-red-hand-apple-plantation-2788662/",
      "type": "photo",
      "tags": "apple, red, hand",
      "previewURL":
          "https://cdn.pixabay.com/photo/2017/09/26/13/42/apple-2788662_150.jpg",
      "previewWidth": 150,
      "previewHeight": 88,
      "webformatURL":
          "https://pixabay.com/get/g48912ee848e615ce21410a03fcab73183d6a62337a60740d1119f3ac145b9b3b2514ecb00b8df77b23d0963b49291670e6e108fecd055f47e5f75d926ccb7e84_640.jpg",
      "webformatWidth": 640,
      "webformatHeight": 377,
      "largeImageURL":
          "https://pixabay.com/get/g03e6d6a0c185bc522824c1fc40a3b73267728021935047f8917980abc8a6377677ca12bf3e89f6137b4519ee9b7b691db37e805e0f9c9fc61515fbd143e9ca38_1280.jpg",
      "imageWidth": 6000,
      "imageHeight": 3539,
      "imageSize": 2042422,
      "views": 213951,
      "downloads": 136333,
      "collections": 624,
      "likes": 653,
      "comments": 95,
      "user_id": 2364555,
      "user": "NoName_13",
      "userImageURL":
          "https://cdn.pixabay.com/user/2022/12/12/07-40-59-226_250x250.jpg"
    },
    {
      "id": 606761,
      "pageURL": "https://pixabay.com/photos/apple-imac-ipad-workplace-606761/",
      "type": "photo",
      "tags": "apple, imac, ipad",
      "previewURL":
          "https://cdn.pixabay.com/photo/2015/01/21/14/14/apple-606761_150.jpg",
      "previewWidth": 150,
      "previewHeight": 99,
      "webformatURL":
          "https://pixabay.com/get/gfe9a6ecea7505c2ac57009b95d15c3207317de1a009fd8deb114bd7f533400009f3b103b3c31de2949391dcbd4014b1e_640.jpg",
      "webformatWidth": 640,
      "webformatHeight": 425,
      "largeImageURL":
          "https://pixabay.com/get/g5bde798a5ca68a47071c70fec8c1210bc56edb2d1edf4a592d7c539bccbad1c7b8355fa3177fb422a593691f65abed382461aa0e2c15597a1801b4108fbd3dfd_1280.jpg",
      "imageWidth": 4209,
      "imageHeight": 2796,
      "imageSize": 1649126,
      "views": 478712,
      "downloads": 275306,
      "collections": 728,
      "likes": 550,
      "comments": 122,
      "user_id": 663163,
      "user": "Firmbee",
      "userImageURL":
          "https://cdn.pixabay.com/user/2020/11/25/09-38-28-431_250x250.png"
    },
    {
      "id": 1368187,
      "pageURL":
          "https://pixabay.com/photos/apple-blossom-flowers-tree-1368187/",
      "type": "photo",
      "tags": "apple blossom, flowers, tree",
      "previewURL":
          "https://cdn.pixabay.com/photo/2016/05/02/22/16/apple-blossom-1368187_150.jpg",
      "previewWidth": 150,
      "previewHeight": 88,
      "webformatURL":
          "https://pixabay.com/get/gedbb1d6217dae30a01669a8b40ab243062d0469731bee28d26252463005332e7ff1cf0fe456152da6018433fe48b97551b46fa38a3fa559d14641775b162f49c_640.jpg",
      "webformatWidth": 640,
      "webformatHeight": 379,
      "largeImageURL":
          "https://pixabay.com/get/g989c2185643aedf52ea44445aba671e27a4b8957c101cd2a06bce91876a13159898aa3f6b9be14cc02d00bc06762fb98cee91a10f0b1a34377f5b2e65a2b0ec6_1280.jpg",
      "imageWidth": 3966,
      "imageHeight": 2352,
      "imageSize": 860935,
      "views": 291376,
      "downloads": 185673,
      "collections": 707,
      "likes": 824,
      "comments": 138,
      "user_id": 2367988,
      "user": "kie-ker",
      "userImageURL": ""
    },
    {
      "id": 2788651,
      "pageURL":
          "https://pixabay.com/photos/apples-apple-tree-fruits-orchard-2788651/",
      "type": "photo",
      "tags": "apples, apple tree, fruits",
      "previewURL":
          "https://cdn.pixabay.com/photo/2017/09/26/13/39/apples-2788651_150.jpg",
      "previewWidth": 150,
      "previewHeight": 77,
      "webformatURL":
          "https://pixabay.com/get/gd358a187b805c966ed0e9245db54b56b533de0f3519d4769679aa7f9052d7a30ab0dcd57d843a75d2f67ad5b5b15e2c4791bf934ba9e3786cf27b9dc4b521a11_640.jpg",
      "webformatWidth": 640,
      "webformatHeight": 330,
      "largeImageURL":
          "https://pixabay.com/get/g99c8a6a0b6094c19ecd94f617eda327a15d6f38b1f5bd22f5e1b59875fcdc4b1a89c479930320711aec9d8a581ad948045355d1f98971022d41d85072a836446_1280.jpg",
      "imageWidth": 6000,
      "imageHeight": 3103,
      "imageSize": 2518838,
      "views": 90465,
      "downloads": 58688,
      "collections": 488,
      "likes": 476,
      "comments": 53,
      "user_id": 2364555,
      "user": "NoName_13",
      "userImageURL":
          "https://cdn.pixabay.com/user/2022/12/12/07-40-59-226_250x250.jpg"
    },
    {
      "id": 2788616,
      "pageURL": "https://pixabay.com/photos/apple-red-red-apple-2788616/",
      "type": "photo",
      "tags": "apple, red, red apple",
      "previewURL":
          "https://cdn.pixabay.com/photo/2017/09/26/13/31/apple-2788616_150.jpg",
      "previewWidth": 150,
      "previewHeight": 90,
      "webformatURL":
          "https://pixabay.com/get/g74672769bc3e2b9decc299c91f759b19083bd76163b516a22bd0e4eabe692965cd12af375bbb022a46370dc1b2a9ca01d7136c922649c746ce9eaa87f115f5d4_640.jpg",
      "webformatWidth": 640,
      "webformatHeight": 384,
      "largeImageURL":
          "https://pixabay.com/get/g396f821d2a22278f00f4756920c162b6f857789fd71cf20a852bb5e36e23cf15c1500f37be6ee1c0c1395a7f44b8cd6e0162d551fcf1ed32d7442493d598c23e_1280.jpg",
      "imageWidth": 6000,
      "imageHeight": 3601,
      "imageSize": 2758033,
      "views": 148677,
      "downloads": 90808,
      "collections": 435,
      "likes": 508,
      "comments": 41,
      "user_id": 2364555,
      "user": "NoName_13",
      "userImageURL":
          "https://cdn.pixabay.com/user/2022/12/12/07-40-59-226_250x250.jpg"
    },
    {
      "id": 805124,
      "pageURL":
          "https://pixabay.com/photos/apples-basket-fruits-apple-basket-805124/",
      "type": "photo",
      "tags": "apples, basket, fruits",
      "previewURL":
          "https://cdn.pixabay.com/photo/2015/06/10/19/56/apples-805124_150.jpg",
      "previewWidth": 150,
      "previewHeight": 129,
      "webformatURL":
          "https://pixabay.com/get/g1037355728103bb7cad3a57bb75b3f1f063a6c8b17c21147759d15c62de00aca8a15f844ec24305d729140f0ae0743ee_640.jpg",
      "webformatWidth": 640,
      "webformatHeight": 553,
      "largeImageURL":
          "https://pixabay.com/get/g55e14e40ee284a6484f511cf2a7e3daa3fa4c2e953be76571c525f808a9f6ebf93eec36207b7bec55fc5ed075d88ac1c370c06f570a42ce666f81b289c8b6d55_1280.jpg",
      "imageWidth": 3101,
      "imageHeight": 2683,
      "imageSize": 998659,
      "views": 184157,
      "downloads": 114661,
      "collections": 525,
      "likes": 545,
      "comments": 108,
      "user_id": 1107275,
      "user": "Larisa-K",
      "userImageURL":
          "https://cdn.pixabay.com/user/2015/06/13/06-38-56-116_250x250.jpg"
    },
    {
      "id": 1872997,
      "pageURL":
          "https://pixabay.com/photos/apples-fruits-orchard-nature-trees-1872997/",
      "type": "photo",
      "tags": "apples, fruits, orchard",
      "previewURL":
          "https://cdn.pixabay.com/photo/2016/11/30/15/00/apples-1872997_150.jpg",
      "previewWidth": 150,
      "previewHeight": 99,
      "webformatURL":
          "https://pixabay.com/get/g8b36a350c38041bc135a41fe7eab6874c67e7f21b6c8ec504722626471f53e96f11a0263c7eab819f7e8d40e1ed6e25daad6cc1277bef6d82a75dffbb9e126db_640.jpg",
      "webformatWidth": 640,
      "webformatHeight": 426,
      "largeImageURL":
          "https://pixabay.com/get/ga493efefa68f2b7604d03884e0443a94181decc2e2251124a32bf825eba5a203cb2adc4ee0e880981ac038a961717588a35aa3e08221cf0aafa4e8cbd7943864_1280.jpg",
      "imageWidth": 3504,
      "imageHeight": 2336,
      "imageSize": 2019234,
      "views": 241023,
      "downloads": 155485,
      "collections": 711,
      "likes": 717,
      "comments": 103,
      "user_id": 3890388,
      "user": "lumix2004",
      "userImageURL": ""
    },
    {
      "id": 1702316,
      "pageURL":
          "https://pixabay.com/photos/apple-red-fruit-red-chief-1702316/",
      "type": "photo",
      "tags": "apple, red, fruit",
      "previewURL":
          "https://cdn.pixabay.com/photo/2016/09/29/08/33/apple-1702316_150.jpg",
      "previewWidth": 150,
      "previewHeight": 116,
      "webformatURL":
          "https://pixabay.com/get/ga4ba06e66d53ef6d4e04e73ecad537abe0d1448c8590ccf7a29a848057cf075fd6506f06fdeed768c15c5e488bcd96f4caa148f719d5e1064f02be0a5156fb87_640.jpg",
      "webformatWidth": 640,
      "webformatHeight": 495,
      "largeImageURL":
          "https://pixabay.com/get/g61260274d1620c711b0f0bc0da859a219d3951651042deecd7628f47363634d4d49ef2182bda7a58bd0cc54086c069957e1acc9060e479ba6848c4a9951e5c74_1280.jpg",
      "imageWidth": 4000,
      "imageHeight": 3099,
      "imageSize": 1930833,
      "views": 166904,
      "downloads": 111432,
      "collections": 360,
      "likes": 370,
      "comments": 32,
      "user_id": 2364555,
      "user": "NoName_13",
      "userImageURL":
          "https://cdn.pixabay.com/user/2022/12/12/07-40-59-226_250x250.jpg"
    },
    {
      "id": 2391,
      "pageURL":
          "https://pixabay.com/photos/apple-diet-female-food-fresh-2391/",
      "type": "photo",
      "tags": "apple, diet, female",
      "previewURL":
          "https://cdn.pixabay.com/photo/2010/12/13/10/09/apple-2391_150.jpg",
      "previewWidth": 150,
      "previewHeight": 99,
      "webformatURL":
          "https://pixabay.com/get/ga5e60429acdedd3d50fb6f4764f8467cead56db816c081f330d3fd7fdc9455783be9f802a6d1411ac2597986c77ad132_640.jpg",
      "webformatWidth": 640,
      "webformatHeight": 426,
      "largeImageURL":
          "https://pixabay.com/get/gc9573b81eba5ce2c4718ed745ac6617361d3f9e8aa0b5c895264753a262cc98a277f2bdbdc2895b5b5cc32e132429ce5_1280.jpg",
      "imageWidth": 4752,
      "imageHeight": 3168,
      "imageSize": 752002,
      "views": 152399,
      "downloads": 101871,
      "collections": 391,
      "likes": 302,
      "comments": 41,
      "user_id": 14,
      "user": "PublicDomainPictures",
      "userImageURL":
          "https://cdn.pixabay.com/user/2012/03/08/00-13-48-597_250x250.jpg"
    },
    {
      "id": 8591539,
      "pageURL": "https://pixabay.com/photos/apple-fruit-wet-food-8591539/",
      "type": "photo",
      "tags": "apple, fruit, wet",
      "previewURL":
          "https://cdn.pixabay.com/photo/2024/02/23/08/27/apple-8591539_150.jpg",
      "previewWidth": 150,
      "previewHeight": 100,
      "webformatURL":
          "https://pixabay.com/get/g5d11242903199e35fc92d782e44171bfdb491cf5b1eb07fce618fde2912c83cc4a7da65c3c097ecf666a0b416b72c4f9dcf73617e80be21f35c700e8660f9325_640.jpg",
      "webformatWidth": 640,
      "webformatHeight": 427,
      "largeImageURL":
          "https://pixabay.com/get/g94da7f5fb3140829e48bd95f99501e1785abbe9bfe1991cbe72200e6203fcc70a2e8920d907c5d5fbb96c9fb8cbe19de4be1486458ede2c246bbc0734dbb1e86_1280.jpg",
      "imageWidth": 6002,
      "imageHeight": 4000,
      "imageSize": 1943929,
      "views": 15435,
      "downloads": 12858,
      "collections": 65,
      "likes": 180,
      "comments": 27,
      "user_id": 9285194,
      "user": "guvo59",
      "userImageURL":
          "https://cdn.pixabay.com/user/2023/06/15/05-00-59-993_250x250.jpg"
    },
    {
      "id": 569153,
      "pageURL":
          "https://pixabay.com/photos/home-office-notebook-home-couch-569153/",
      "type": "photo",
      "tags": "home office, notebook, home",
      "previewURL":
          "https://cdn.pixabay.com/photo/2014/12/15/14/05/home-office-569153_150.jpg",
      "previewWidth": 150,
      "previewHeight": 99,
      "webformatURL":
          "https://pixabay.com/get/g4a4d0f7310ba570a505ab89cebd6615c1afffe3d39244509717801946f990848bc0634a24f24390f264ea11eabe18d93_640.jpg",
      "webformatWidth": 640,
      "webformatHeight": 426,
      "largeImageURL":
          "https://pixabay.com/get/gc26d2743c2b912b79228de9e7ca51b16ce769f1bf973070fffeca1c53716e346e0b29d73e566e1edb5972ab6e04a3adfeb3d42d43ddea11f29618380c84759f4_1280.jpg",
      "imageWidth": 5760,
      "imageHeight": 3840,
      "imageSize": 3991496,
      "views": 368340,
      "downloads": 209134,
      "collections": 685,
      "likes": 501,
      "comments": 92,
      "user_id": 364018,
      "user": "Life-Of-Pix",
      "userImageURL":
          "https://cdn.pixabay.com/user/2014/08/21/23-01-42-554_250x250.jpg"
    },
    {
      "id": 256268,
      "pageURL":
          "https://pixabay.com/photos/apple-red-delicious-fruit-vitamins-256268/",
      "type": "photo",
      "tags": "apple, red, delicious",
      "previewURL":
          "https://cdn.pixabay.com/photo/2014/02/01/17/30/apple-256268_150.jpg",
      "previewWidth": 150,
      "previewHeight": 99,
      "webformatURL":
          "https://pixabay.com/get/gd6729c2e0d535ac1d40c89b4885d61a971da8e9f43d0ebb8f8d671e4260874d935317ce8d527578e4b5826adc4e83356_640.jpg",
      "webformatWidth": 640,
      "webformatHeight": 423,
      "largeImageURL":
          "https://pixabay.com/get/gd75e827505ad45bbfa5fb3d5e631e5599f1ed3094f475f2c3469cf0741703b16a7a6296a58a45c4980cb1b63e55dc20ec289b7fc6758497cfe914344659c977e_1280.jpg",
      "imageWidth": 4928,
      "imageHeight": 3264,
      "imageSize": 2942037,
      "views": 97144,
      "downloads": 50635,
      "collections": 321,
      "likes": 270,
      "comments": 41,
      "user_id": 143740,
      "user": "jarmoluk",
      "userImageURL":
          "https://cdn.pixabay.com/user/2019/09/18/07-14-26-24_250x250.jpg"
    },
    {
      "id": 1776744,
      "pageURL":
          "https://pixabay.com/photos/apples-leaves-fall-still-life-1776744/",
      "type": "photo",
      "tags": "apples, leaves, fall",
      "previewURL":
          "https://cdn.pixabay.com/photo/2016/10/27/22/52/apples-1776744_150.jpg",
      "previewWidth": 150,
      "previewHeight": 100,
      "webformatURL":
          "https://pixabay.com/get/g8119ec4b9cb356e7edefbf9962147a65ea4f05b0d7f695aa8600fcc472319b953b01611f12537d5c8c2f36690114c378edfaff2b13534096650c15258de383c5_640.jpg",
      "webformatWidth": 640,
      "webformatHeight": 427,
      "largeImageURL":
          "https://pixabay.com/get/g0483d309f42426ee2ebffe4d0eea8748694ace5752d4d75b8cbe2f8a0b8539866ba8ac941d98c96253b4a9563994d770e99bd751f199f10d79fa5f78a9ae5606_1280.jpg",
      "imageWidth": 4193,
      "imageHeight": 2798,
      "imageSize": 2002268,
      "views": 265242,
      "downloads": 171979,
      "collections": 808,
      "likes": 757,
      "comments": 106,
      "user_id": 2970404,
      "user": "castleguard",
      "userImageURL":
          "https://cdn.pixabay.com/user/2016/09/18/22-38-35-578_250x250.jpg"
    }
  ]
};
