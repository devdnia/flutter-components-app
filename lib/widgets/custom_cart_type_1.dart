import 'package:flutter/material.dart';

import 'package:components_app/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children:  [

          const ListTile(
            leading: Icon( Icons.ac_unit, color: AppTheme.primary),
            title: Text('Soy un título'),
            subtitle: Text(
              'Aliquip dolor sunt tempor mollit qui occaecat excepteur elit. Aute sint exercitation sint Lorem reprehenderit duis nisi commodo. Qui dolore culpa exercitation velit minim. Ipsum labore laborum deserunt adipisicing irure esse magna et nisi et ad. Velit et aute duis aute quis Lorem cillum commodo reprehenderit nulla.'
              ),
          ),

          Padding(
            padding: const EdgeInsets.only( right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {}, 
                  child: const Text('Cancelar'),
                  ),

                TextButton(
                  onPressed: () {}, 
                  child: const Text('Ok'),
                  ),               
              ],
            ),
          )
        ],
      ),
    );
  }
}