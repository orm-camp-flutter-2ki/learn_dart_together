class TraderDto {
  String? name;
  String? city;

  TraderDto({
    this.name,
    this.city,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'city': city,
    };
  }

  factory TraderDto.fromJson(Map<String, dynamic> json) {
    return TraderDto(
      name: json['name'] as String,
      city: json['city'] as String,
    );
  }
}