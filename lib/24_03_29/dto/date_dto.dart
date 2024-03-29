class DateDto {
  String? maximum;
  String? minimum;

  DateDto({
    this.maximum,
    this.minimum,
  });

  DateDto.fromJson(dynamic json) {
    maximum = json['maximum'];
    minimum = json['minimum'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['maximum'] = maximum;
    map['minimum'] = minimum;
    return map;
  }
}
