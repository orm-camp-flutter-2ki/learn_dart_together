enum PhotoType {
  article('article'),
  image('image'),
  video('video'),
  unknown('unknown');

  final String value;

  const PhotoType(this.value);

  PhotoType stringToPhotoType(String inputValue) {
    return switch (inputValue) {
      'article' => PhotoType.article,
      'image' => PhotoType.image,
      'video' => PhotoType.video,
      _ => PhotoType.unknown,
    };
  }
}
