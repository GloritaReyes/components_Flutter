import 'package:fl_components/models/models.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:fl_components/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    final menuOption=AppRoutes.menuOption;

    return  Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
        centerTitle: true,
       
      ),
      body:ListView.separated(
      itemBuilder: (context, i)=>ListTile(
        leading: Icon(menuOption[i].icon,color:Apptheme.primary),
        title:Text(menuOption[i].name),
        onTap: (){
        //  final route=MaterialPageRoute(
        //  builder: (context)=>const Listview1Screen()
        //  );
        // Navigator.push(context, route);
        Navigator.pushNamed(context,menuOption[i].route);
        }, 
      ), 
      separatorBuilder: (_,__)=>const Divider(), 
      itemCount: menuOption.length
      )
    );
  }
}