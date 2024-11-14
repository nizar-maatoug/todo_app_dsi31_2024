import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/core/themes/theme_manager.dart';
import 'package:todo_app/features/home/presentation/blocs/switch_theme/switchtheme_bloc.dart';
import 'package:todo_app/features/home/presentation/widgets/toolbar_action_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SwitchthemeBloc, SwitchthemeState>(
        builder: (context, state) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: state.themeValue
            ? AppThemes.appThemeData[AppTheme.lightTheme]
            : AppThemes.appThemeData[AppTheme.darkTheme],
        home: Scaffold(
          appBar: AppBar(
            title: const Text('TODO APP'),
            actions: [
              state.themeValue
                  ? const ActionButton(
                      icon: Icon(
                        Icons.light_mode,
                        size: 26.0,
                      ),
                      themeValue: true,
                    )
                  : const ActionButton(
                      icon: Icon(
                        Icons.dark_mode,
                        size: 26.0,
                      ),
                      themeValue: false,
                    ),
            ],
          ),
          body: const Center(
            child: Text('TODO APP'),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
        ),
      );
    });
  }
}
