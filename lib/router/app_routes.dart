import 'package:flutter/material.dart';
import '../views/views.dart';
import 'package:flutter_widgets/models/models.dart';

typedef WidgetRoutes = Widget Function(BuildContext);

class AppRoutes {
  static final menuOptions = <MenuOption>[
    MenuOption(
      route: 'alertView',
      name: 'Alert View',
      view: const AlertView(),
      icon: Icons.warning_amber_rounded,
    ),
    MenuOption(
      route: 'listView1',
      name: 'List View Type #1',
      view: ListView1(),
      icon: Icons.list,
    ),
    MenuOption(
      route: 'cardView',
      name: 'Card View',
      view: CardView(),
      icon: Icons.card_membership,
    ),
    MenuOption(
      route: 'avatarView',
      name: 'Avatar View',
      view: AvatarView(),
      icon: Icons.person,
    ),
    MenuOption(
      route: 'animatedView',
      name: 'Animated View',
      view: AnimatedView(),
      icon: Icons.animation,
    ),
    MenuOption(
      route: 'inputsView',
      name: 'Inputs View',
      view: InputsView(),
      icon: Icons.input_outlined,
    )
  ];

  static const initialRoute = 'home';

  static Map<String, WidgetRoutes> getAppRoutes() {
    Map<String, WidgetRoutes> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => HomeView()});
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.view});
    }
    return appRoutes;
  }

  // static Map<String, WidgetRoutes> routes = {
  //   'homeView': (context) => HomeView(),
  //   'listView1': (context) => const ListView1(),
  //   'listView2': (context) => const ListView2(),
  //   'alertView': (context) => const AlertView(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => ListView1());
  }
}
