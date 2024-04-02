import 'dart:io';

import 'package:dotenv/dotenv.dart';
import 'package:learn_dart_together/24_04_01/config/profile.dart';

final env = DotEnv(includePlatformEnvironment: true)..load([getProfile()]);

String getProfile() {
  Profile profile =
      Profile.stringToProfile(Platform.environment['PROFILE'] ?? 'local');
  return profile.value;
}

class PixabayConfig {
  static final String apiKey = env['PIXABAY_API_KEY'].toString();
  static final String pixabayUrl = env['PIXABAY_URL'].toString();

  _PixabayConfig() {}
}
