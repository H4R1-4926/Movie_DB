// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'comingsoon_model.freezed.dart';
part 'comingsoon_model.g.dart';

@freezed
class ComingSoonData with _$ComingSoonData {
  const factory ComingSoonData({
    @JsonKey(name: "title") required String? title,
    @JsonKey(name: "name") required String? name,
    @JsonKey(name: "backdrop_path") required String? bacdropPath,
    @JsonKey(name: "poster_path") required String? postarPath,
    @JsonKey(name: "overview") required String? overview,
    @JsonKey(name: "release_date") required String? data,
    @JsonKey(name: "genre_ids") required List<int> genre,
  }) = _ComingSoonData;

  factory ComingSoonData.fromJson(Map<String, dynamic> json) =>
      _$ComingSoonDataFromJson(json);
}
