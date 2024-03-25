import 'address.dart';

class Users {
  int id;
  String name;
  String username;
  Address address;
  String phone;
  String website;

  Users(this.id, this.name, this.username, this.address, this.phone,
      this.website);

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'username': username,
        'address': address,
        'phone': phone,
        'website': website
      };

  Users.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        name = json['name'],
        username = json['username'],
        address = json['address'],
        phone = json['phone'],
        website = json['website'];

  Users copyWith({
    int? id,
    String? name,
    String? username,
    Address? address,
    String? phone,
    String? website,
  }) {
    return Users(
      id ?? id!,
      name ?? name!,
      username ?? username!,
      address ?? address!,
      phone ?? phone!,
      website ?? website!,
    );
  }

  @override
  String toString() {
    return 'users{id: $id, name: $name, username: $username, address: $address, phone: $phone, website: $website}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Users &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          username == other.username &&
          address == other.address &&
          phone == other.phone &&
          website == other.website;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      username.hashCode ^
      address.hashCode ^
      phone.hashCode ^
      website.hashCode;
}
