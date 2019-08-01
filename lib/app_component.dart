import 'package:angular/angular.dart';
import 'package:angularDartTest/src/film/api.service.dart';
import 'package:angularDartTest/src/film/components/movie_list/movie_list_component.dart';
import 'package:angularDartTest/src/film/models/movie.dart';
import 'package:angularDartTest/src/routes.dart';
import 'package:angular_router/angular_router.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
    selector: 'my-app',
    styleUrls: ['app_component.css'],
    templateUrl: 'app_component.html',
    directives: [coreDirectives, MovieListComponent, routerDirectives],
    pipes: [commonPipes],
    providers: [ClassProvider(ApiService)],
    exports: [RoutePath, Routes])
class AppComponent implements OnInit {
//  final title = 'Tour';
  AppComponent(this._apiService);

  ApiService _apiService;
  Stream<List<Movie>> movies$;

  @override
  void ngOnInit() {
    movies$ = _apiService.getMovies();
  }
}
