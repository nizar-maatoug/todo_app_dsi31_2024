import 'package:get_it/get_it.dart';
import 'package:todo_app/features/tasks/presentation/blocs/switch_theme/switchtheme_bloc.dart';
import 'package:todo_app/navigation/app_router.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //Service Locator for all components

  // find and instanciate SwitchthemeBloc
  sl.registerLazySingleton(() => SwitchthemeBloc());

  // find and instanciate AppRouter
  sl.registerLazySingleton(() => AppRouter());
}
