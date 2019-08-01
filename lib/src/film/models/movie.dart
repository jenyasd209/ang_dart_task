import 'package:json_annotation/json_annotation.dart';

part 'movie.g.dart';

@JsonSerializable()
class Movie {
  Movie(this.id, this.originalTitle, this.overview, this.title, posterPath) {
    this.posterPath = 'https://image.tmdb.org/t/p/w200/' + posterPath;
  }

  int id;
  @JsonKey(name: 'original_title', nullable: true, defaultValue: "No title")
  String originalTitle;
  @JsonKey(nullable: true, defaultValue: "Нет заголовка")
  String title;
  String overview;
  @JsonKey(name: "poster_path", nullable: true)
  String posterPath;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  Map<String, dynamic> toJson() => _$MovieToJson(this);
}
