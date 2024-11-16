import 'package:go_router/go_router.dart';
import 'package:todo_app/core/pages/page_not_found_screen.dart';
import 'package:todo_app/features/auth/presentation/screens/login_screen.dart';
import 'package:todo_app/features/auth/presentation/screens/register_screen.dart';
import 'package:todo_app/features/tasks/presentation/screens/add_task_screen.dart';
import 'package:todo_app/features/tasks/presentation/screens/tasks_screen.dart';

class AppRouter {
  late final GoRouter router = GoRouter(
    debugLogDiagnostics: true,
    routes: <GoRoute>[
      GoRoute(
          path: '/',
          name: 'home',
          builder: (context, state) {
            return const TasksScreen();
          }),
      GoRoute(
        path: 'add-task',
        name: 'add-task',
        builder: (context, state) => const AddTaskScreen(),
      ),
      GoRoute(
          path: 'login',
          name: 'login',
          builder: (context, state) => const LoginScreen(),
          routes: [
            GoRoute(
              path: 'register',
              name: 'register',
              builder: (context, state) => const RegisterScreen(),
            ),
          ]),
    ],
    errorBuilder: (context, state) => const PageNotFound(),
  );
}
