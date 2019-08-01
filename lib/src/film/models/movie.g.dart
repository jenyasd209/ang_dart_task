// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Movie _$MovieFromJson(Map<String, dynamic> json) {
  return Movie(
    json['id'] as int,
    json['original_title'] as String ?? 'No title',
    json['overview'] as String,
    json['title'] as String ?? 'Нет заголовка',
    json['poster_path'],
  );
}

Map<String, dynamic> _$MovieToJson(Movie instance) => <String, dynamic>{
      'id': instance.id,
      'original_title': instance.originalTitle,
      'title': instance.title,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
    };
