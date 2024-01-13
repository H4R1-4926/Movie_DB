// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../Application/ComingSoon/coming_soon_bloc.dart' as _i12;
import '../../../Application/Floating/floating_items_bloc.dart' as _i13;
import '../../../Application/Home/home_page_bloc.dart' as _i14;
import '../../../Application/search/search_page_bloc.dart' as _i11;
import '../../../Infrastructure/Comin_soon/comingsoon_repository.dart' as _i4;
import '../../../Infrastructure/HomeFloating/homefloating_repository.dart'
    as _i6;
import '../../../Infrastructure/HomePage/home_repository.dart' as _i8;
import '../../../Infrastructure/Search/search_repository.dart' as _i10;
import '../../ComingSoon/i_comingsoon_repo.dart' as _i3;
import '../../HomeFloating/i_float_repo.dart' as _i5;
import '../../HomePage/i_home_repo.dart' as _i7;
import '../../Search/i_se_repo.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.IComingSoonRepo>(() => _i4.GetDetails());
  gh.lazySingleton<_i5.IFloatItems>(() => _i6.GetData());
  gh.lazySingleton<_i7.IHomeRepo>(() => _i8.GetDetails());
  gh.lazySingleton<_i9.ISearchDataRepo>(() => _i10.SearchDetails());
  gh.factory<_i11.SearchPageBloc>(
      () => _i11.SearchPageBloc(get<_i9.ISearchDataRepo>()));
  gh.factory<_i12.ComingSoonBloc>(
      () => _i12.ComingSoonBloc(get<_i3.IComingSoonRepo>()));
  gh.factory<_i13.FloatingItemsBloc>(
      () => _i13.FloatingItemsBloc(get<_i5.IFloatItems>()));
  gh.factory<_i14.HomePageBloc>(() => _i14.HomePageBloc(get<_i7.IHomeRepo>()));
  return get;
}
