/// id : 8595521
/// pageURL : "https://pixabay.com/photos/forsythia-flowers-branch-8595521/"
/// type : "photo"
/// tags : "forsythia, flowers, branch"
/// previewURL : "https://cdn.pixabay.com/photo/2024/02/25/10/11/forsythia-8595521_150.jpg"
/// previewWidth : 112
/// previewHeight : 150
/// webformatURL : "https://pixabay.com/get/gb0daae2464d28e900e08e3cf52f864f21b9c56304798e4738aec597bd09fb6dd78a9a8130548dc9ee10b8e8b8986ffdc620fe2b728cff8f76dcb5a4038e99dc7_640.jpg"
/// webformatWidth : 480
/// webformatHeight : 640
/// largeImageURL : "https://pixabay.com/get/g847af596b0f86b50412cc30a3c1c8ca48af343a9510fd7081108f71f47fb746541ee45dd2c7fc9027460c3d4e76485cd68717d560fa59157db6a52a2c96a7719_1280.jpg"
/// imageWidth : 3024
/// imageHeight : 4032
/// imageSize : 970371
/// views : 43491
/// downloads : 35073
/// collections : 188
/// likes : 1023
/// comments : 40
/// user_id : 10328767
/// user : "Mylene2401"
/// userImageURL : "https://cdn.pixabay.com/user/2020/08/02/06-54-24-533_250x250.jpeg"

class PhotoDto {
  PhotoDto({
    this.id,
    this.pageURL,
    this.type,
    this.tags,
    this.previewURL,
    this.previewWidth,
    this.previewHeight,
    this.webformatURL,
    this.webformatWidth,
    this.webformatHeight,
    this.largeImageURL,
    this.imageWidth,
    this.imageHeight,
    this.imageSize,
    this.views,
    this.downloads,
    this.collections,
    this.likes,
    this.comments,
    this.userId,
    this.user,
    this.userImageURL,
  });

  PhotoDto.fromJson(dynamic json) {
    id = json['id'];
    pageURL = json['pageURL'];
    type = json['type'];
    tags = json['tags'];
    previewURL = json['previewURL'];
    previewWidth = json['previewWidth'];
    previewHeight = json['previewHeight'];
    webformatURL = json['webformatURL'];
    webformatWidth = json['webformatWidth'];
    webformatHeight = json['webformatHeight'];
    largeImageURL = json['largeImageURL'];
    imageWidth = json['imageWidth'];
    imageHeight = json['imageHeight'];
    imageSize = json['imageSize'];
    views = json['views'];
    downloads = json['downloads'];
    collections = json['collections'];
    likes = json['likes'];
    comments = json['comments'];
    userId = json['user_id'];
    user = json['user'];
    userImageURL = json['userImageURL'];
  }
  num? id;
  String? pageURL;
  String? type;
  String? tags;
  String? previewURL;
  num? previewWidth;
  num? previewHeight;
  String? webformatURL;
  num? webformatWidth;
  num? webformatHeight;
  String? largeImageURL;
  num? imageWidth;
  num? imageHeight;
  num? imageSize;
  num? views;
  num? downloads;
  num? collections;
  num? likes;
  num? comments;
  num? userId;
  String? user;
  String? userImageURL;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['pageURL'] = pageURL;
    map['type'] = type;
    map['tags'] = tags;
    map['previewURL'] = previewURL;
    map['previewWidth'] = previewWidth;
    map['previewHeight'] = previewHeight;
    map['webformatURL'] = webformatURL;
    map['webformatWidth'] = webformatWidth;
    map['webformatHeight'] = webformatHeight;
    map['largeImageURL'] = largeImageURL;
    map['imageWidth'] = imageWidth;
    map['imageHeight'] = imageHeight;
    map['imageSize'] = imageSize;
    map['views'] = views;
    map['downloads'] = downloads;
    map['collections'] = collections;
    map['likes'] = likes;
    map['comments'] = comments;
    map['user_id'] = userId;
    map['user'] = user;
    map['userImageURL'] = userImageURL;
    return map;
  }
}
