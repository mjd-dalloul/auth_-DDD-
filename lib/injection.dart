import 'package:auth/application/auth/sign_in_bloc/sign_in_bloc.dart';
import 'package:auth/services/interfaces/i_image_picker.dart';
import 'package:auth/services/service_logic/image_picker_service.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sailor/sailor.dart';

import 'Infrastructure/repository/auth_repository.dart';
import 'application/auth/sign_up_bloc/sign_up_bloc.dart';
import 'domain/auth/i_auth_repository.dart';


final GetIt sl = GetIt.instance;

void configureInjection() {
  sl.registerLazySingleton(() => Sailor());
  sl.registerLazySingleton(() => ImagePicker());
  sl.registerLazySingleton<IImagePicker>(() => ImagePickerService(sl()));
  sl.registerLazySingleton<IAuthRepository>(() => AuthRepository());
  sl.registerFactory(() => SignInBloc(sl()));
  sl.registerFactory(() => SignUpBloc(sl(), sl()));
}
