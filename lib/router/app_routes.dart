import 'package:flutter/material.dart';

import 'package:components_app/screens/screens.dart';
import 'package:components_app/models/models.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOption = <MenuOption>[
    MenuOption(
      route: 'listview1',
      name: 'Listview tipo 1',
      screen: const Listview1Screen(),
      icon: Icons.list_alt,
    ),
    MenuOption(
      route: 'listview2',
      name: 'Listview tipo 2',
      screen: const Listview2Screen(),
      icon: Icons.list_outlined,
    ),
    MenuOption(
      route: 'alert',
      name: 'Alertas',
      screen: const AlertScreen(),
      icon: Icons.add_alert,
    ),
    MenuOption(
      route: 'card',
      name: 'Cards',
      screen: const CardScreen(),
      icon: Icons.credit_card,
    ),
    MenuOption(
      route: 'avatar',
      name: 'Circle Avatar',
      screen: const AvatarScreen(),
      icon: Icons.supervised_user_circle_outlined,
    ),
    MenuOption(
      route: 'animated',
      name: 'Animated Container',
      screen: const AnimatedScreen(),
      icon: Icons.play_circle_outline_rounded,
    ),
    MenuOption(
      route: 'inputs',
      name: 'Text Inputs',
      screen: const InputsScreen(),
      icon: Icons.input_rounded,
    ),
    MenuOption(
      route: 'slider',
      name: 'Slider and Checks',
      screen: const SliderScreen(),
      icon: Icons.slideshow_sharp,
    ),
    MenuOption(
      route: 'listviewbuilder',
      name: 'InfinityScroll & Pull to refresh ',
      screen: const ListViewBuilderScreen(),
      icon: Icons.build,
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    //home
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOption) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const Listview1Screen(),
  //   'listview2': (BuildContext context) => const Listview2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const HomeScreen());
  }
}
