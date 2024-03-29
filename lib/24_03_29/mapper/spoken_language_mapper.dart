import 'package:learn_dart_together/24_03_29/dto/spoken_language_dto.dart';
import 'package:learn_dart_together/24_03_29/model/spoken_language.dart';

extension spokenLanguageDtoToSpokenLanguage on SpokenLanguageDto {
  SpokenLanguage toSpokenLanguage() {
    return SpokenLanguage(
      englishName: englishName ?? 'unknown',
      iso6391: iso6391 ?? 'unknown',
      name: name ?? 'unknown',
    );
  }
}