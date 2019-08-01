import 'package:angular_router/angular_router.dart';

const idParam = 'id';

class RoutePaths {
  static final movies = RoutePath(path: 'movies');
  static final movie = RoutePath(path: '${movies.path}/:$idParam');
}