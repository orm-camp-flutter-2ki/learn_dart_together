class Movie {
  final String _title;
  final String _director;
  final int _year;

  Movie(this._title, this._director, this._year);

  Movie.fromJson(Map<String, dynamic> json)
      : _title = json['title'],
        _director = json['director'],
        _year = json['year'];

  Map<String, dynamic> toJson() => {
        'title': _title,
        'director': _director,
        'year': _year,
      };

  Movie copyWith({
    String? title,
    String? director,
    int? year,
  }) {
    return Movie(
      title ?? _title,
      director ?? _director,
      year ?? _year,
    );
  }

  get title => _title;
  get director => _director;
  get year => _year;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Movie && runtimeType == other.runtimeType && _title == other.title && _director == other.director && _year == other.year;

  @override
  int get hashCode => title.hashCode ^ director.hashCode ^ year.hashCode;

  @override
  String toString() => 'Movie(_title: $_title, _director: $_director, _year: $_year)';
}
