import 'package:learn_dart_together/24_03_21/movie.dart';

void main() async{
  Movie movie = await getMovieInfo();
  print(movie.director);


}