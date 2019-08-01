import 'dart:convert';

import 'package:angular/angular.dart';
import 'package:angularDartTest/src/film/models/movie.dart';
import 'package:angularDartTest/src/film/models/movies_response.dart';
import 'package:http/http.dart';

@Injectable()
class ApiService {
  Client client = Client();
  static String apiKey = 'cc37499b567edef6d7fad0608ea992c5';
  static String baseUrl = 'https://api.themoviedb.org';

  Stream<List<Movie>> getMovies() => client
      .get('$baseUrl/3/trending/all/week?api_key=$apiKey&language=ru')
      .asStream()
      .map((response) =>
          MoviesResponse.fromJson(jsonDecode(response.body)).results);

  Future<Movie> getMovieInfo(int movieId) =>  client
          .get('$baseUrl/3/movie/$movieId?api_key=$apiKey&language=ru').then((response){
        return Movie.fromJson(jsonDecode(response.body));
  });

}
