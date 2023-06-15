import 'package:flutter/material.dart';
import 'package:roll_app/dice_roller.dart';


var startAlignment = Alignment.topCenter;
var endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
   const GradientContainer(this.colors, {super.key });
  
  final List<Color> colors;

  @override
  Widget build(context){

    return Container(
        decoration:  BoxDecoration(
            gradient: LinearGradient(colors: colors
            , begin: startAlignment,
             end: endAlignment)),
        child:  Center(
          child: DiceRoller()
        ),
      );
  }


}
