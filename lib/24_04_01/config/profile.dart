enum Profile {
  dev('lib/24_04_01/resource/env/dev.env'),
  local('lib/24_04_01/resource/env/local.env'),
  prod('lib/24_04_01/resource/env/prod.env');

  final String path;

  const Profile(this.path);

  String get value => path;

  static Profile stringToProfile(String inputValue) {
    return switch (inputValue) {
      'dev' => Profile.dev,
      'local' => Profile.local,
      'prod' => Profile.prod,
      _ => Profile.local,
    };
  }
}
