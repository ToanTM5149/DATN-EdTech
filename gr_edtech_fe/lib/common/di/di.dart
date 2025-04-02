import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import '../../common/configs/dio_config.dart';
import '../../feature/data/repositories/user_repository_impl.dart';
import '../../feature/domain/repositories/user_repository.dart';
import '../../feature/presentation/cubit/user_cubit.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
void configureDependencies() {
  // Dio
  getIt.registerLazySingleton<Dio>(() => DioConfig.getDioInstance());

  // Repositories
  getIt.registerLazySingleton<UserRepository>(
    () => UserRepositoryImpl(getIt<Dio>()),
  );

  // Cubits
  getIt.registerFactory(() => UserCubit(getIt<UserRepository>()));
}
