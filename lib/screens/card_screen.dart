import 'package:flutter/material.dart';

import 'package:components_app/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView( 
        padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10),
        children: const [

          CustomCardType1(),
          SizedBox( height: 10),
          CustomCardType2(
            imageUrl: 'http://www.solofondos.com/wp-content/uploads/2016/04/mountain-landscape-wallpaper.jpg',
            name: 'Alaska',
            ),
          SizedBox( height: 10),
          CustomCardType2(
            imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/3/35/Neckertal_20150527-6384.jpg',),
          SizedBox( height: 10),
          CustomCardType2(
            imageUrl: 'https://images.genial.ly/5c06b4bb0dba080fd2eced18/d1e26a90-6846-4d2d-9d99-9a8e1848fc94.jpeg',
            name: 'Islas de Noruega',),
          SizedBox( height: 100),
        ],
      ),
    );
  }
}

