// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upcoming_movie_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpcomingMovieVO _$UpcomingMovieVOFromJson(Map<String, dynamic> json) =>
    UpcomingMovieVO(
      json['adult'] as bool?,
      json['backdrop_path'] as String?,
      (json['genre_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
      json['id'] as int?,
      json['original_language'] as String?,
      json['original_title'] as String?,
      json['overview'] as String?,
      json['popularity'] as num?,
      json['poster_path'] as String?,
      json['release_date'] as String?,
      json['title'] as String?,
      json['video'] as bool?,
      json['vote_average'] as num?,
      json['vote_count'] as num?,
    );

Map<String, dynamic> _$UpcomingMovieVOToJson(UpcomingMovieVO instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'genre_ids': instance.genreIDs,
      'id': instance.id,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'title': instance.title,
      'video': instance.video,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
    };