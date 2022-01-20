import 'package:flutter/material.dart';

import 'package:components_app/theme/app_theme.dart';
import 'package:components_app/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final menuOptions = AppRoutes.menuOption;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en flutter'),
      ),
      body: ListView.separated(
          itemBuilder: (context, i) => ListTile(
                title: Text(menuOptions[i].name),
                leading: Icon( menuOptions[i].icon, color: AppTheme.primary ),
                onTap: () {
                  // final route = MaterialPageRoute(
                  //     builder: (context) => const Listview1Screen());
                  // Navigator.push(context, route);

                  Navigator.pushNamed(context, menuOptions[i].route);
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: menuOptions.length),
    );
  }
}
