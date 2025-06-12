import 'package:go_router/go_router.dart';
import 'package:tasker/Features/Splash/views/splash_view.dart';
import 'package:tasker/Features/home/views/home_view.dart';


class AppRoutes {
  static const String splashRoute = "/";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String homeRoute = "/home";
  static const String profileRoute = "/profile";
  static const String settingsRoute = "/settings";
  static const String createTaskRoute = "/createTask";
  static const String taskDetailsRoute = "/taskDetails";
  static const String editTaskRoute = "/editTask";
  static const String taskListRoute = "/taskList";
  static const String notificationRoute = "/notification";
  static const String bottomNavBarRoute = '/bottomNavBar';
  static const String changePasswordRoute = '/changePassword';
  static const String updateProfileRoute = '/updateProfile';
  static const String addTaskRoute = '/addTask';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: splashRoute,
        builder: (context, state) => const SplashView(),
      ),
     
      GoRoute(
        path: homeRoute,
        builder: (context, state) => const HomeView(),
      ),
    
    ],
  );
}
