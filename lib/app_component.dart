import 'package:angular/angular.dart';
import 'package:angularDartTest/src/film/components/movie_list/movie_list_component.dart';
import 'package:angularDartTest/src/routes.dart';
import 'package:angular_router/angular_router.dart';
import 'package:task_app_shared/task_app_shared.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
    selector: 'my-app',
    styleUrls: ['app_component.css'],
    templateUrl: 'app_component.html',
    directives: [coreDirectives, MovieListComponent, routerDirectives],
    pipes: [commonPipes],
    providers: [ClassProvider(ApiService), ClassProvider(MovieBloc)],
    exports: [RoutePath, Routes])
class AppComponent{
}
