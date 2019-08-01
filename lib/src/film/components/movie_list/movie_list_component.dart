import 'package:angular/angular.dart';
import 'package:angularDartTest/src/film/components/movie_info/movie_info_component.dart';
import 'package:angularDartTest/src/film/models/movie.dart';

@Component(
  selector: 'movie-list',
  templateUrl: 'movie_list_component.html',
  directives: [coreDirectives, MovieInfoComponent],
  pipes: [commonPipes]
)

class MovieListComponent implements OnInit {
  @Input()
  List<Movie> movies;

  @override
  void ngOnInit() {
    // TODO: implement ngOnInit
  }
}
