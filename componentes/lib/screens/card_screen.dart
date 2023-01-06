import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
const CardScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        children:const  [
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(imagenUrl: 'https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg'),
          SizedBox(height: 10),
          CustomCardType2(imagenUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuUs67qeX3Rk_gkTnZin3cBLLpRwp3zUeTdqkcDYJ3ycC_vIGD_-Hl9jfKXSEPN2dFHkw&usqp=CAU'),
          SizedBox(height: 10),
          CustomCardType2(name:'un hermoso paisaje',imagenUrl: 'https://photographylife.com/wp-content/uploads/2016/06/Mass.jpg'),
          SizedBox(height: 100),
          
        ],
      )
    );
  }
}
