import 'dart:math';

import 'package:flutter/material.dart';
import 'package:roll_app/style_text.dart';
class DiceRoller extends StatefulWidget{

  @override
  State<DiceRoller> createState() {
    return _DiceRoller();
  }
}
class _DiceRoller extends State<DiceRoller>{
  var activeDicesImage = 'res/images/dice-2.png';
  void dice_select(){
    var changeRoller = Random().nextInt(6)+1;
    setState(() {
      activeDicesImage = 'res/images/dice-$changeRoller.png';
    });
  
  
}

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min,
            children: [
            Image.asset(
              activeDicesImage,
              width: 264
              ),
            const SizedBox(height: 24),
            TextButton(
              onPressed:dice_select,
                child: StyleText('ROLL'),
            style: TextButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 244, 94, 94)
              )
              )
          ]
          );
  }
}