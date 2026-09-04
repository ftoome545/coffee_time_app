import 'package:coffee_time/core/services/shared_preferences_service.dart';
import 'package:coffee_time/features/auth/data/repos/phone_auth_repo.dart';
import 'package:get_it/get_it.dart';
import 'auth_firebase_service.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  if (!getIt.isRegistered<AuthFirebaseService>()) {
    getIt.registerLazySingleton<AuthFirebaseService>(
      () => AuthFirebaseService(),
    );
  }

  if (!getIt.isRegistered<SharedPreferencesService>()) {
    getIt.registerLazySingleton<SharedPreferencesService>(
      () => SharedPreferencesService(),
    );
  }

  if (!getIt.isRegistered<PhoneAuthRepo>()) {
    getIt.registerLazySingleton<PhoneAuthRepo>(
      () => PhoneAuthRepo(
        service: getIt<AuthFirebaseService>(),
        prefs: getIt<SharedPreferencesService>(),
      ),
    );
  }
}
