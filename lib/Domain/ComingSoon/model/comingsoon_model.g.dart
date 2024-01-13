// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comingsoon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ComingSoonDataImpl _$$ComingSoonDataImplFromJson(Map<String, dynamic> json) =>
    _$ComingSoonDataImpl(
      title: json['title'] as String?,
      name: json['name'] as String?,
      bacdropPath: json['backdrop_path'] as String?,
      postarPath: json['poster_path'] as String?,
      overview: json['overview'] as String?,
      data: json['release_date'] as String?,
      genre: (json['genre_ids'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$ComingSoonDataImplToJson(
        _$ComingSoonDataImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'name': instance.name,
      'backdrop_path': instance.bacdropPath,
      'poster_path': instance.postarPath,
      'overview': instance.overview,
      'release_date': instance.data,
      'genre_ids': instance.genre,
    };
