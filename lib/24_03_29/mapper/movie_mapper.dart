import 'package:learn_dart_together/24_03_29/model/movie.dart';

import '../dto/movie_dto.dart';

extension MovieDtoToMovie on MovieDto {
  //moviedto안에다 moviedtotomovie를 확장시켜 주겠다. dto가 무비로 바뀌는것. 반환값이 무비일것
  Movie toMovie() {
    //반환값
    return Movie(
        adult: adult ?? false,        //movie 끝에 보면 아래 쫘르륵 나옴. 여기서 tap치면 생성자 불러옴->코드 정렬
        backdropPath: backdropPath ?? '',
        genreIds: genreIds ?? <num>[],
        id: id ?? -1,
        originalLanguage: originalLanguage ?? '',
        originalTitle: originalTitle ?? '',
        overview: overview ?? '',
        popularity: popularity ?? -1,
        posterPath: posterPath ?? '',
        releaseDate: releaseDate ?? '',
        title: title ?? '',
        video: video ?? false,
        voteAverage: voteAverage ?? -1
        voteCount: voteCount ?? -1);
  }
}

//mapper의 역할: dto에서 dataclass로 변환.
//dto의 기능을 확장. 그럼 dto에서 데이터를 만들어야되니까


extension MovieToMovieDto on Movie {
  MovieDto toMovieDto() {
    return MovieDto(
      adult: adult,
      backdropPath: backdropPath,
      genreIds: genreIds,
      id: id,
      originalLanguage: originalLanguage,
      originalTitle: originalTitle,
      overview: overview,
      popularity: popularity,
      posterPath: posterPath,
      releaseDate: releaseDate,
      title: title,
      video: video,
      voteAverage: voteAverage,
      voteCount: voteCount,
    );
  }
}
