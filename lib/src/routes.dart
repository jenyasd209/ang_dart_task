import 'package:angular_router/angular_router.dart';

import 'route_paths.dart';
import 'package:angularDartTest/src/film/components/movie_list/movie_list_component.template.dart' as movie_list_component;
import 'package:angularDartTest/src/film/components/movie_info/movie_info_component.template.dart' as movie_info;

export 'route_paths.dart';

class Routes {
  static final movies = RouteDefinition(
    routePath: RoutePaths.movies,
    component: movie_list_component.MovieListComponentNgFactory,
  );
  static final movie = RouteDefinition(
    routePath: RoutePaths.movie,
    component: movie_info.MovieInfoComponentNgFactory,
  );

  static final all = <RouteDefinition>[
    movies,
    movie,
  ];
}