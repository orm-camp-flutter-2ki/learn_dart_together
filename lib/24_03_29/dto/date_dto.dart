class DateDto {
  final String? maximum;
  final String? minimum;

  DateDto({
    required this.maximum,
    required this.minimum,
  });

  factory DateDto.fromJson(Map<String, dynamic> json) {
    return DateDto(
      maximum: json['maximum'],
      minimum: json['minimum'],
    );
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['maximum'] = maximum;
    map['minimum'] = minimum;
    return map;
  }
}
