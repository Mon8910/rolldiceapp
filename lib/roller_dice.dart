import 'package:flutter/material.dart';
import 'dart:math';
final randomizer=Random();
class RollerDice extends StatefulWidget{
  const   RollerDice({super.key});
  @override
  
  State<RollerDice> createState() {
    return _RollerDiceState();
   
  }
}

class _RollerDiceState extends State<RollerDice>{
  var currentdiceroll=2;
 void rolldice(){

  setState(() {
    currentdiceroll=randomizer.nextInt(6)+1;
  });
 }
  @override
  Widget build( context) {
    return Column(mainAxisSize: MainAxisSize.min,
              children: 
            [Image.asset("assets/images/dice-$currentdiceroll.png",
            width: 200,),
            const SizedBox(height: 30,)
            ,TextButton(onPressed:rolldice , 
            style: TextButton.styleFrom(
              //padding:const  EdgeInsets.only(top: 30),
              foregroundColor: Colors.white,
              textStyle:  const TextStyle(fontSize: 28)
            ),
            child: 
            const Text('roll dice',
          ),)
            ],
            );
    
  }
}