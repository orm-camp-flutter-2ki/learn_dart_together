import '../geo_dto.dart';

extension Validator on GeoDto {
  bool validate() {
    return lng != null && lat != null;
  }

  bool validateLng() => lng != null;
  bool validateLat() => lat != null;
}