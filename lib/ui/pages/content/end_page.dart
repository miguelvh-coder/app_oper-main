import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/answer.dart';


class end_page extends StatelessWidget {
  const end_page({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ep(),
    );
  }
}

class ep extends StatefulWidget {
  @override
  _ep createState() => _ep();
}

class _ep extends State<ep> {


  @override
  Widget build(BuildContext context) {
    answer controller = Get.find();

    return Scaffold(
      
      appBar: AppBar(
        title: const Text("Fin de módulo"),
      ),
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Container(
            color: Colors.amber,
            child:(
              const Text(
                'Fin de la sesión', // Muestra el int convertido o un mensaje de error
                style: TextStyle(fontSize: 32.0), // Ajusta el tamaño de la fuente del texto
              )
            )
          ),
          Container(
            color: const Color.fromARGB(255, 235, 235, 235),
            child:(
              const Text(
                'Su puntuación fue:', // Muestra el int convertido o un mensaje de error
                style: TextStyle(fontSize: 22.0), // Ajusta el tamaño de la fuente del texto
              )
            )
          ),
          Container(
            color: Color.fromARGB(255, 172, 172, 172),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Padding(
                  padding:const EdgeInsets.all(20.0), // Ajusta el espacio alrededor del textonull, // Cambia null por la función que debe ejecutarse cuando se presione el botón
                    child: Obx(() {
                    final point = controller.puntuacion.toString();

                    return Text(
                      'Respuestas correctas: $point/6', // Muestra el int convertido o un mensaje de error
                      style: const TextStyle(fontSize: 18.0), // Ajusta el tamaño de la fuente del texto
                    );
                  }),
                ),

                Padding(
                  padding:const EdgeInsets.all(20.0), // Ajusta el espacio alrededor del textonull, // Cambia null por la función que debe ejecutarse cuando se presione el botón
                    child: Obx(() {
                    final point = controller.puntuacion.toString();

                    return Text(
                      'Respuestas correctas: $point/6', // Muestra el int convertido o un mensaje de error
                      style: const TextStyle(fontSize: 18.0), // Ajusta el tamaño de la fuente del texto
                    );
                  }),
                ),

              ],
            )
          ),

        ],
      ),
      )
    );
  }
}