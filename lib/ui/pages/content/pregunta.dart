import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/operacion.dart';
import '../../widgets/resultado.dart';
import '../../widgets/botones.dart';

import 'package:app_oper/ui/controllers/answer.dart';
import 'package:app_oper/ui/controllers/dificultad.dart';

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});
  


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Calculator(),
      
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  answer controller = Get.find();
  
  
  String input = "";
  double result = 0.0;

 

  @override
  Widget build(BuildContext context) {

    dificultad controller = Get.find();
    answer controller2 = Get.find();

    int dia = controller.difficultya;
    int dib = controller.difficultyb;
    controller2.generar_q(dia,dib);
    

    List<List<String>> buttonGrid = [
      ["7", "8", "9"],
      ["4", "5", "6"],
      ["1", "2", "3"],
      ["C", "0", "go"],
    ];

    List<Widget> buttonRows = [];

    for (List<String> row in buttonGrid) {
      List<Widget> rowButtons = [];
      for (String buttonText in row) {
        rowButtons.add(botones(button: buttonText));
      }
      buttonRows.add(Row(
        children: rowButtons,
        mainAxisAlignment: MainAxisAlignment.center,
      ));
    }
    
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Calculadora Flutter"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          

          
          //principal
          operacion(),
          resultado(),
          Column(
            children: buttonRows,
          ),
          
        ],
      ),
    );
  }
}