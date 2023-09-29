import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:plateron_assignment/home/bloc/home_bloc.dart';
import 'package:plateron_assignment/home/view/cart_screen.dart';
import 'package:plateron_assignment/home/view/home_screen.dart';
import 'package:plateron_assignment/home/view/order_success_screen.dart';
import 'package:plateron_assignment/splash_screen/view/splash_screen.dart';

class Routes {
  static const String home_screen = 'home_Screen';
  static const String splash = 'splash';
  static const String cart_screen = 'cart_screen';
  static const String order_success_screen = 'order_success_screen';

  static Route<dynamic>? getGeneratedRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: splash),
          builder: (_) => SplashScreen(),
        );

      case home_screen:
        return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: home_screen),
          builder: (_) => HomeScreen(),
        );

      case cart_screen:
        return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: cart_screen),
          builder: (_) => CartScreen(),
        );

      case order_success_screen:
        return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: order_success_screen),
          builder: (_) => OrderSuccessScreen(),
        );

      default:
        return null;
    }
  }

  static void setupGetIt() {
    GetIt.I.registerSingleton<HomeScreenBloc>(HomeScreenBloc());
  }
}
