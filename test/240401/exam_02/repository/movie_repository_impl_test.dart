import 'package:learn_dart_together/240401/exam_02/data_source/movie_data_source.dart';
import 'package:learn_dart_together/240401/exam_02/dto/movie_detail_dto.dart';
import 'package:learn_dart_together/240401/exam_02/mapper/movie_detail_mapper.dart';
import 'package:learn_dart_together/240401/exam_02/model/movie_detail.dart';
import 'package:learn_dart_together/240401/exam_02/repository/movie_repository.dart';
import 'package:learn_dart_together/240401/exam_02/repository/movie_repository_impl.dart';
import 'package:learn_dart_together/240401/exam_02/result.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('823464 번 영화 정보 test', () async {
    final id = 823464;

    final repository = MovieRepositoryImpl(MockMovieDataSource());

    final Result<MovieDetail> result = await repository.getMovieDetail(id);

    switch(result) {
      case Success<MovieDetail>():
        final MovieDetail movieDetail = result.data;
        expect(movieDetail, MovieDetail.fromJson(movieDetailJson));
      case Error<MovieDetail>():
        final errorMessage = result.message;

    }

  });
}

class MockMovieDataSource implements MovieDataSource {
  @override
  Future<MovieDetailDto> getMovieDetailDto(int id) async {
    return MovieDetailDto.fromJson(movieDetailJson);
  }
}

class MockMovieRepository implements MovieRepository {
  final _dataSource = MovieDataSource();

  @override
  Future<Result<MovieDetail>> getMovieDetail(int id) async {
    final movieDetailDto = await _dataSource.getMovieDetailDto(id);

    return Result.success(movieDetailDto.toMovieDetail());
  }
}

final movieDetailJson = {
  "adult": false,
  "backdrop_path": "/sR0SpCrXamlIkYMdfz83sFn5JS6.jpg",
  "belongs_to_collection": null,
  "budget": 135000000,
  "genres": [
    {"id": 28, "name": "액션"},
    {"id": 878, "name": "SF"},
    {"id": 12, "name": "모험"}
  ],
  "homepage": "",
  "id": 823464,
  "imdb_id": "tt14539740",
  "original_language": "en",
  "original_title": "Godzilla x Kong: The New Empire",
  "overview":
      "고질라 X 콩, 이번에는 한 팀이다! ‘고질라’ VS ‘콩’, 두 타이탄의 전설적인 대결 이후 할로우 어스에 남은 ‘콩’은 드디어 애타게 찾던 동족을 발견하지만 그 뒤에 도사리고 있는 예상치 못한 위협에 맞닥뜨린다. 한편, 깊은 동면에 빠진 ‘고질라’는 알 수 없는 신호로 인해 깨어나고 푸른 눈의 폭군 ‘스카 킹’의 지배 아래 위기에 처한 할로우 어스를 마주하게 된다. 할로우 어스는 물론, 지구상에도 출몰해 전세계를 초토화시키는 타이탄들의 도발 속에서 ‘고질라’와 ‘콩’은 사상 처음으로 한 팀을 이뤄 반격에 나서기로 하는데…",
  "popularity": 4825.24,
  "poster_path": "/4z1VMmlxHrziG45901esjB4dpIa.jpg",
  "production_companies": [
    {
      "id": 923,
      "logo_path": "/8M99Dkt23MjQMTTWukq4m5XsEuo.png",
      "name": "Legendary Pictures",
      "origin_country": "US"
    },
    {
      "id": 174,
      "logo_path": "/zhD3hhtKB5qyv7ZeL4uLpNxgMVU.png",
      "name": "Warner Bros. Pictures",
      "origin_country": "US"
    }
  ],
  "production_countries": [
    {"iso_3166_1": "US", "name": "United States of America"}
  ],
  "release_date": "2024-03-27",
  "revenue": 0,
  "runtime": 115,
  "spoken_languages": [
    {"english_name": "English", "iso_639_1": "en", "name": "English"}
  ],
  "status": "Released",
  "tagline": "이번에는 한 팀이다",
  "title": "고질라 X 콩: 뉴 엠파이어",
  "video": false,
  "vote_average": 7.132,
  "vote_count": 193
};
