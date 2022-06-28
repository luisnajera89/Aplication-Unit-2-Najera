import 'package:flutter/material.dart';
import 'package:aplication/models/option_menu.dart';
import 'package:aplication/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOptions>[
    MenuOptions(
        route: 'alert',
        icon: Icons.add_alarm_outlined,
        name: 'Alerts Screen',
        screen: const AlertScreen()),
    MenuOptions(
        route: 'animation',
        icon: Icons.ads_click_outlined,
        name: 'Animation',
        screen: const AnimationScreen()),
    MenuOptions(
        route: 'card',
        icon: Icons.credit_card,
        name: 'Credit Card',
        screen: const CardScreen()),
    /*MenuOptions(
      route: 'home', 
      icon: Icons.ads_click_rounded, 
      name: 'Welcome to home', 
      screen: const HomeScreen()),*/
    MenuOptions(
        route: 'listview',
        icon: Icons.list_alt_outlined,
        name: 'List Type 1',
        screen: const ListViewScreen()),
    MenuOptions(
        route: 'listview2',
        icon: Icons.list_outlined,
        name: 'List Type 2',
        screen: const ListView2Screen())
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home': (BuildContext context) => HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  static Route<dynamic> onGeneratedRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
