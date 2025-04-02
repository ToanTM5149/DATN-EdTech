// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../feature/data/repositories/authentication_repository_impl.dart'
    as _i533;
import '../../feature/data/sources/authentication_remote_data_source.dart'
    as _i493;
import '../../feature/domain/repositories/authentication_repository.dart'
    as _i214;
import '../../feature/domain/repositories/user_repository.dart' as _i562;
import '../../feature/presentation/cubit/user_cubit.dart' as _i198;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i198.UserCubit>(
        () => _i198.UserCubit(gh<_i562.UserRepository>()));
    gh.factory<_i214.AuthenticationRepository>(() =>
        _i533.AuthenticationRepositoryImpl(
            remoteDataSource: gh<_i493.AuthenticationRemoteDataSource>()));
    return this;
  }
}
