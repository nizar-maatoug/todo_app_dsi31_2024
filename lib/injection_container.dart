

import 'package:get_it/get_it.dart';
import 'package:todo_app/navigation/app_router.dart';

final sl = GetIt.instance;

Future<void> init() async{

  //Service Locator for all components

  sl.registerLazySingleton(() => AppRouter());


}