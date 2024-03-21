import 'dart:io';

import 'package:learn_dart_together/24_03_21/api_call.dart';
import 'package:test/test.dart';

void main() {

  test('api call test', () async{
    Movie movie = await getMovieInfo();

    expect(movie.director, 'George Lucas');
  });
}
