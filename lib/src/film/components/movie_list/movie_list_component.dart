import 'package:angular/angular.dart';
import 'package:angularDartTest/src/film/components/movie_info/movie_info_component.dart';
import 'package:angularDartTest/src/route_paths.dart';
import 'package:angular_router/angular_router.dart';
import 'package:task_app_shared/task_app_shared.dart';

@Component(
    selector: 'movie-list',
    styleUrls: ['movie_list_component.css'],
    templateUrl: 'movie_list_component.html',
    directives: [coreDirectives, MovieInfoComponent],
    pipes: [commonPipes])
class MovieListComponent implements OnInit {
//  final ApiService _apiService;
  final Router _router;
  MovieBloc _movieBloc;

  MovieListComponent(this._router, this._movieBloc);

  List<Movie> movies;

  @override
  void ngOnInit() {
    _movieBloc.dispatchGetMovies();
    _movieBloc.state.listen((state) {
      print(state);
      movies = state.movies.toList();
    });
  }

  void goMovie(int id) {
    _router.navigate(RoutePaths.movie.toUrl(parameters: {idParam: '$id'}));
  }
}
