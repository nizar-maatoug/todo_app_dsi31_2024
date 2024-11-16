import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/core/themes/theme_manager.dart';
import 'package:todo_app/features/home/presentation/blocs/switch_theme/switchtheme_bloc.dart';
import 'package:todo_app/navigation/app_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SwitchthemeBloc, SwitchthemeState>(
        builder: (context, state) {
      return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: state.themeValue
            ? AppThemes.appThemeData[AppTheme.lightTheme]
            : AppThemes.appThemeData[AppTheme.darkTheme],
        routerConfig: AppRouter().router,
      );
    });
  }
}
