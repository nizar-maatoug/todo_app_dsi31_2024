import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/features/home/presentation/blocs/switch_theme/switchtheme_bloc.dart';

class ActionButton extends StatelessWidget {
  final Icon icon;
  final bool themeValue;
  const ActionButton({super.key, required this.icon, required this.themeValue});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: GestureDetector(
            onTap: () {
              if (themeValue) {
                print('aaaa');
                BlocProvider.of<SwitchthemeBloc>(context)
                    .add(SwitchDarkThemeEvent());
              } else {
                BlocProvider.of<SwitchthemeBloc>(context)
                    .add(SwitchLightThemeEvent());
              }
            },
            child: icon));
  }
}
