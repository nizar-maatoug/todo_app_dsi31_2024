import 'package:flutter/material.dart';
import 'package:todo_app/core/themes/theme_manager.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AppThemes.appThemeData[AppTheme.lightTheme],
      darkTheme: AppThemes.appThemeData[AppTheme.darkTheme],
      home: Scaffold(
        appBar: AppBar(
          title: const Text('TODO APP'),
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
  }
}