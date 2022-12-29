import 'package:flutter/material.dart';
import 'package:money_manage/ui/register_page.dart';
import 'package:money_manage/ui/splash_page/splash_page.dart';
import 'package:money_manage/utils/const.dart';

class MyRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashPage:
        return _navigateTo(view: const SplashPage());
      case registerPage:
        return _navigateTo(view:  RegisterPage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}

MaterialPageRoute _navigateTo({required Widget view}) {
  return MaterialPageRoute(builder: (_) => view);
}
