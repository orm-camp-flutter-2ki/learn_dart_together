import 'package:learn_dart_together/orm_240321/movie.dart';
import 'package:test/test.dart';

void main(){
  test('Movie director serch', () async{
    String director = 'George Lucas';
    String json ='''{
    "title": "Star Ward",
    "director": "$director",
    "year": 1997
    }''';

    Movie result = await getMovieInfo(json);


    expect(result.director, director);
  });
}