import '../address_dto.dart';

extension Validator on AddressDto {
  bool validate() {
    return street != null &&
        suite != null &&
        city != null &&
        zipcode != null &&
        geo != null;
  }

  bool validateStreet() => street != null;
  bool validateSuite() => suite != null;
  bool validateCity() => city != null;
  bool validateZipcode() => zipcode != null;
  bool validateGeo() => geo != null;
}