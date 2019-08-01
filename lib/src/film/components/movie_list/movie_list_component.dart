import 'package:angular/angular.dart';
import 'package:angularDartTest/src/film/api.service.dart';
import 'package:angularDartTest/src/film/components/movie_info/movie_info_component.dart';
import 'package:angularDartTest/src/film/models/movie.dart';
import 'package:angularDartTest/src/route_paths.dart';
import 'package:angular_router/angular_router.dart';

@Component(
    selector: 'movie-list',
    styleUrls: ['movie_list_component.css'],
    templateUrl: 'movie_list_component.html',
    directives: [coreDirectives, MovieInfoComponent],
    pipes: [commonPipes])
class MovieListComponent implements OnInit {
  final ApiService _apiService;
  final Router _router;

  MovieListComponent(this._apiService, this._router);

  Stream<List<Movie>> movies$;

  @override
  void ngOnInit() {
    movies$ = _apiService.getMovies();
  }

  void goMovie(int id) {
    _router.navigate(RoutePaths.movie.toUrl(parameters: {idParam: '$id'}));
  }
}
