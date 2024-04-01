import 'dart:io';

import 'package:dotenv/dotenv.dart';

final env = DotEnv(includePlatformEnvironment: true)..load([getProfile()]);

String getProfile() {
  String profile = Platform.environment['PROFILE'] ?? 'local';
  return switch (profile) {
    'dev' => 'lib/24_04_01/resource/env/dev.env',
    'prod' => 'lib/24_04_01/resource/env/prod.env',
    _ => 'lib/24_04_01/resource/env/local.env',
  };
}

class PixabayConfig {
  static final String apiKey = env['PIXABAY_API_KEY'].toString();
  static final String pixabayUrl = env['PIXABAY_URL'].toString();

  _PixabayConfig() {}
}
