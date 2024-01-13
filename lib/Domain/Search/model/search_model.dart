// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'search_model.freezed.dart';
part 'search_model.g.dart';

@freezed
class SearchData with _$SearchData {
  const factory SearchData({
    @JsonKey(name: "title") required String? title,
    @JsonKey(name: "name") required String? name,
    @JsonKey(name: "backdrop_path") required String? bacdropPath,
    @JsonKey(name: "poster_path") required String? posterPath,
    @JsonKey(name: "overview") required String? overview,
    @JsonKey(name: "release_date") required String? data,
    @JsonKey(name: "media_type") required String? mediaType,
    @JsonKey(name: "first_air_date") required String? tvDate,
    @JsonKey(name: "genre_ids") required List<int> genre,
  }) = _SearchData;

  factory SearchData.fromJson(Map<String, dynamic> json) =>
      _$SearchDataFromJson(json);
}
