
import 'package:flutter/material.dart';
import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/screens.dart';

class AppRoutes{
  static const initialRoute='home';

  static final menuOption=<MenuOption>[
 // MenuOption(route: 'home', name: 'Home Screen', screen: const HomeScreen(),icon: Icons.home_max_sharp),
  MenuOption(route: 'listview 1', name: 'listview 1', screen: const Listview1Screen(),icon: Icons.list_alt),
  MenuOption(route: 'listview 2', name: 'listview 2', screen: const Listview2Screen(),icon: Icons.list),
  MenuOption(route: 'Alert', name: 'Alertas - Alerts', screen: const AlertScreen(),icon: Icons.add_alert_outlined),
  MenuOption(route: 'Card', name: 'Tarjetas - Cards ', screen: const CardScreen(),icon: Icons.credit_card),
  MenuOption(route: 'Avatar', name: 'Circle Avatar ', screen: const AvatarScreen(),icon: Icons.supervised_user_circle_outlined),
  MenuOption(route: 'Animated', name: 'Animated Container ', screen: const AnimatedScreen(),icon: Icons.play_circle_outline_rounded),
  MenuOption(route: 'Inputs', name: 'Text Inputs', screen: const InputsScreen(),icon: Icons.input_rounded),
  MenuOption(route: 'Slider', name: 'Slider and checks', screen: const SliderScreen(),icon: Icons.slow_motion_video_rounded),
  MenuOption(route: 'listviewbuilder', name: 'InfiniteScrol & pull to refresh', screen: const ListviewBuilderScreen(),icon: Icons.build_circle_outlined),


  ];
  static Map<String,Widget Function(BuildContext)>getAppRoutes(){
     Map<String,Widget Function(BuildContext)> AppRoutes={};
     AppRoutes.addAll({'home':(BuildContext context)=> const HomeScreen()});

     for(final option in menuOption){
      AppRoutes.addAll({option.route:(BuildContext context)=> option.screen});
     }
     return AppRoutes;
  }

 // static Map<String,Widget Function(BuildContext)>routes={
 //   'home':(BuildContext context)=>const HomeScreen(),
 //   'listview1':(BuildContext context)=>const Listview1Screen(),
 //   'listview2':(BuildContext context)=>const Listview2Screen(),
 //   'Alert':(BuildContext context)=>const AlertScreen(),
 //   'Card':(BuildContext context)=>const CardScreen(),
 // };
static Route<dynamic> onGenerateRoute(settings){
  return MaterialPageRoute(
    builder: (context) => const AlertScreen(),
  );
}
}