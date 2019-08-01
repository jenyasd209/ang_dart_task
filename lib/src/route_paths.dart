import 'package:angular_router/angular_router.dart';

const idParam = 'id';

int getId(Map<String, String> parameters) {
  final id = parameters[idParam];
  return id == null ? null : int.tryParse(id);
}

class RoutePaths {
  static final home = RoutePath(path: '');
  static final movies = RoutePath(path: 'movies');
  static final movie = RoutePath(path: '${movies.path}/:$idParam');
}