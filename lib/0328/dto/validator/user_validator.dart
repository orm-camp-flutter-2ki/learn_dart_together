import '../user_dto.dart';

extension Validator on UserDto {
  bool validate() {
    return id != null &&
        name != null &&
        username != null &&
        email != null &&
        address != null &&
        phone != null &&
        website != null &&
        company != null;
  }

  bool validateId() => id != null;
  bool validateName() => name != null;
  bool validateUsername() => username != null;
  bool validateEmail() => email != null;
  bool validateAddress() => address != null;
  bool validatePhone() => phone != null;
  bool validateWebsite() => website != null;
  bool validateCompany() => company != null;
}