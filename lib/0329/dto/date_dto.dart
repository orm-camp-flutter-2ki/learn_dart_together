class DateDto {

  final String? maximum;
  final String? minimum;

  const DateDto({
    this.maximum,
    this.minimum,
  });

  Map<String, dynamic> toJson() {
    return {
      'maximum': maximum,
      'minimum': minimum,
    };
  }

  factory DateDto.fromJson(Map<String, dynamic> map) {
    return DateDto(
      maximum: map['maximum'] as String,
      minimum: map['minimum'] as String,
    );
  }
}