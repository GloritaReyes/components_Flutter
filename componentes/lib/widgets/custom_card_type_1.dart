import 'package:flutter/material.dart';
import 'package:fl_components/theme/app_theme.dart';
class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album_outlined,color: Apptheme.primary),
            title: Text('Soy un titulo'),
            subtitle: Text('Laborum labore veniam in irure mproident minim deserunt adipisicing reprehenderit nisi.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                 TextButton(
                 onPressed: (){},
                 child: const Text('Cancelar'),
                 ),
                 TextButton(
                 onPressed: (){},
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