// class PhotoDto {
//   PhotoDto({
//       this.total,
//       this.totalHits,
//       this.hits,});
//
//   PhotoDto.fromJson(dynamic json) {
//     total = json['total'];
//     totalHits = json['totalHits'];
//     if (json['hits'] != null) {
//       hits = [];
//       json['hits'].forEach((v) {
//         hits?.add(HitsDto.fromJson(v));
//       });
//     }
//   }
//   int? total;
//   int? totalHits;
//   List<HitsDto>? hits;
// PhotoDto copyWith({  int? total,
//   int? totalHits,
//   List<HitsDto>? hits,
// }) => PhotoDto(  total: total ?? this.total,
//   totalHits: totalHits ?? this.totalHits,
//   hits: hits ?? this.hits,
// );
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['total'] = total;
//     map['totalHits'] = totalHits;
//     if (hits != null) {
//       map['hits'] = hits?.map((v) => v.toJson()).toList();
//     }
//     return map;
//   }
//
// }

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
      this.userImageURL,});

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
  int? id;
  String? pageURL;
  String? type;
  String? tags;
  String? previewURL;
  int? previewWidth;
  int? previewHeight;
  String? webformatURL;
  int? webformatWidth;
  int? webformatHeight;
  String? largeImageURL;
  int? imageWidth;
  int? imageHeight;
  int? imageSize;
  int? views;
  int? downloads;
  int? collections;
  int? likes;
  int? comments;
  int? userId;
  String? user;
  String? userImageURL;
PhotoDto copyWith({  int? id,
  String? pageURL,
  String? type,
  String? tags,
  String? previewURL,
  int? previewWidth,
  int? previewHeight,
  String? webformatURL,
  int? webformatWidth,
  int? webformatHeight,
  String? largeImageURL,
  int? imageWidth,
  int? imageHeight,
  int? imageSize,
  int? views,
  int? downloads,
  int? collections,
  int? likes,
  int? comments,
  int? userId,
  String? user,
  String? userImageURL,
}) => PhotoDto(  id: id ?? this.id,
  pageURL: pageURL ?? this.pageURL,
  type: type ?? this.type,
  tags: tags ?? this.tags,
  previewURL: previewURL ?? this.previewURL,
  previewWidth: previewWidth ?? this.previewWidth,
  previewHeight: previewHeight ?? this.previewHeight,
  webformatURL: webformatURL ?? this.webformatURL,
  webformatWidth: webformatWidth ?? this.webformatWidth,
  webformatHeight: webformatHeight ?? this.webformatHeight,
  largeImageURL: largeImageURL ?? this.largeImageURL,
  imageWidth: imageWidth ?? this.imageWidth,
  imageHeight: imageHeight ?? this.imageHeight,
  imageSize: imageSize ?? this.imageSize,
  views: views ?? this.views,
  downloads: downloads ?? this.downloads,
  collections: collections ?? this.collections,
  likes: likes ?? this.likes,
  comments: comments ?? this.comments,
  userId: userId ?? this.userId,
  user: user ?? this.user,
  userImageURL: userImageURL ?? this.userImageURL,
);
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