import 'package:salesforce_app/presentation/add_update_subscription_screen/add_update_subscription_screen.dart';
import 'package:salesforce_app/presentation/add_update_subscription_screen/binding/add_update_subscription_binding.dart';
import 'package:salesforce_app/presentation/splash_screen/splash_screen.dart';
import 'package:salesforce_app/presentation/splash_screen/binding/splash_binding.dart';
import 'package:salesforce_app/presentation/home_screen/home_screen.dart';
import 'package:salesforce_app/presentation/home_screen/binding/home_binding.dart';
import 'package:salesforce_app/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:salesforce_app/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:salesforce_app/presentation/search_screen/search_screen.dart';
import 'package:salesforce_app/presentation/search_screen/binding/search_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String addUpdateSubscriptionScreen = '/add_update_subscription_screen';
  
  static String searchScreen = '/search_screen';

  static String splashScreen = '/splash_screen';

  static String homeScreen = '/home_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
      GetPage(
      name: searchScreen,
      page: () => SearchScreen(),
      bindings: [
        SearchBinding(),
      ],
    ),
    GetPage(
      name: addUpdateSubscriptionScreen,
      page: () => AddUpdateSubscriptionScreen(),
      bindings: [
        AddUpdateSubscriptionBinding(),
      ],
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
