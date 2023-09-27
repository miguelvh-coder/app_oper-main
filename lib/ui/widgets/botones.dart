
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/result_writer.dart';



class botones extends StatelessWidget {
   botones({super.key, required this.button, });

  final String button;


  @override
  Widget build(BuildContext context, {Color? buttonColor}) {
    result_writer controller = Get.find();

   answer controller2 = Get.find();

    dificultad controller3 = Get.find();

    int dia = controller3.difficultya;
    int dib = controller3.difficultyb;

    Color buttonColor = Colors.blue;
    if (button == "go") {
      buttonColor = Colors.orange; // Cambia el color del botón "=" a naranja
    }else if(button == "go") {
      buttonColor = Colors.red;
    }

    //funciones
    int n_val (String nombre) {
      if (nombre == "1") {
        return 1;
        } else if (nombre == "2") {
        return 2;
        } else if (nombre == "3") {
        return 3;
        } else if (nombre == "4") {
        return 4;
        } else if (nombre == "5") {
        return 5;
        } else if (nombre == "6") {
        return 6;
        } else if (nombre == "7") {
        return 7;
        } else if (nombre == "8") {
        return 8;
        } else if (nombre == "9") {
        return 9;
        }
      
      return 0;
    }

    void oprimido (String nombre) {
      if (nombre == "C") {
        controller.reset();
      } else if (nombre == "go") {
          if(controller.contador==6){print("fin");}
          controller.aumento();
          controller2.generar_q(dia,dib);
        } else {
        int numero = n_val(nombre);
        controller.newdigit(numero);
      }
    }


    //estructura del boton
    return Container(
      width: 60.0,
      height: 60.0,
      child: ElevatedButton(
        onPressed: () {
          oprimido(button);
        },
        child: Text(
          button,
          style: TextStyle(fontSize: 24.0),
        ),
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          padding: EdgeInsets.all(16.0),
          primary: buttonColor, // Establece el color del botón
        ),
      ),
    );

  }
}

//LISTO
