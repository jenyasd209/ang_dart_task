import 'package:angular/angular.dart';
import 'package:angularDartTest/src/film/api.service.dart';
import 'package:angularDartTest/src/film/models/movie.dart';
import 'package:angular_router/angular_router.dart';

@Component(
  selector: 'movie-info',
  templateUrl: 'movie_info_component.html',
)
class MovieInfoComponent implements OnActivate {
  @Input()
  Movie movie;

//  final ApiService _movieService;
//  final Location _location;
//
//  MovieInfoComponent(this._movieService, this._location);

  @override
  void onActivate(_, RouterState current) async {
//    final id = getId(current.parameters);
//    if (id != null) movie = await (_movieService.get(id));
  }
}
