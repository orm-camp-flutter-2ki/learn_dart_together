enum MediaType {
  article,
  image,
  video,
  unknown;

  MediaType parseMediaType(String type) {
    switch (type) {
      case 'article':
        return MediaType.article;
      case 'image':
        return MediaType.image;
      case 'video':
        return MediaType.video;
      default :
        return MediaType.unknown;
    }
}
}