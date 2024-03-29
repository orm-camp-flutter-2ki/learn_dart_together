class Photo {
  final String url;
  final String title;
  final PhotoType type;
  final DateTime createdAt;

  const Photo({
    required this.url,
    required this.title,
    required this.type,
    required this.createdAt,
  });

// TODO : 희선 4종 추가 땡큐
}

enum PhotoType {
  article,
  image,
  video,
  unknown,
}
