import 'package:movie_database/Core/api.dart';
import 'package:movie_database/Infrastructure/api_key.dart';

class ApiEndPoints {
  static const upcomingmovie =
      "$kbaseurl/movie/upcoming?language=en-US&page=1&api_key=$apiKey";
  static const uptvshows =
      "$kbaseurl/tv/airing_today?language=en-US&page=1&api_key=$apiKey";
  static const trending =
      "$kbaseurl/trending/all/day?language=en-US&api_key=$apiKey";

  static const searchitems =
      "$kbaseurl/search/multi?include_adult=false&language=en-US&page=1&api_key=$apiKey";
  static const popularmovies =
      "$kbaseurl/discover/movie?include_adult=false&include_video=false&language=en-US&page=1&sort_by=popularity.desc&with_genres=27&api_key=$apiKey";
  static const topmovies =
      "$kbaseurl/movie/top_rated?language=en-US&page=1&api_key=$apiKey";
  static const toptv =
      "$kbaseurl/tv/top_rated?language=en-US&page=1&api_key=$apiKey";
  static const populartv =
      "$kbaseurl/tv/popular?language=en-US&page=1&api_key=$apiKey";
  static const page1 =
      "$kbaseurl/discover/movie?include_adult=false&include_video=false&language=en-US&page=1&sort_by=popularity.desc&api_key=$apiKey";
  static const page2 =
      "$kbaseurl/discover/tv?include_adult=false&include_null_first_air_dates=false&language=en-US&page=1&sort_by=popularity.desc&api_key=$apiKey";
}
