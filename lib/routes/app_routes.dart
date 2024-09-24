import '../core/app_export.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import '../presentation/dashboard_screen/binding/dashboard_binding.dart';
import '../presentation/dashboard_screen/dashboard_screen.dart';
import '../presentation/login_screen/binding/login_binding.dart';
import '../presentation/login_screen/login_screen.dart';
import '../presentation/otp_screen/binding/otp_binding.dart';
import '../presentation/otp_screen/otp_screen.dart';

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String loginScreen = '/login_screen';

  static const String otpScreen = '/otp_screen';

  static const String dashboardScreen = '/dashboard_screen';

  static const String dashboardInitialPage = '/dashboard_initial_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [LoginBinding()],
    ),
    GetPage(
      name: otpScreen,
      page: () => OtpScreen(),
      bindings: [OtpBinding()],
    ),
    GetPage(
      name: dashboardScreen,
      page: () => DashboardScreen(),
      bindings: [DashboardBinding()],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [AppNavigationBinding()],
    ),
    GetPage(
      name: initialRoute,
      page: () => LoginScreen(),
      bindings: [LoginBinding()],
    )
  ];
}
