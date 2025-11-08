import 'package:ecommerce_app/config/routes_manager/routes.dart';
import 'package:ecommerce_app/features/auth/login/presentation/screens/login_screen.dart';
import 'package:ecommerce_app/features/auth/register/presentation/screens/register_screen.dart';
import 'package:ecommerce_app/features/main_layout/main_layout.dart';
import 'package:ecommerce_app/features/splash/presentation/screens/splash_screen.dart';
import 'package:go_router/go_router.dart';

abstract class RoutesManager {
  static final GoRouter routers = GoRouter(routes: [
    GoRoute(
      path: Routes.loginRoute,
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: Routes.splashRoute,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: Routes.registerRoute,
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      path: Routes.mainRoute,
      builder: (context, state) => const MainLayout(),
    ),
  ]);
}
