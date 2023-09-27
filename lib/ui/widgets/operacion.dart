import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/dificultad.dart';

class operacion extends StatelessWidget {
  const operacion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    dificultad controller = Get.find();

    return Container(
      color: Colors.amber,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment
            .start, // Cambiamos de MainAxisAlignment.center a MainAxisAlignment.start
        children: [
          ElevatedButton(
            onPressed:
                null, // Cambia null por la función que debe ejecutarse cuando se presione el botón
            child: Padding(
              padding: EdgeInsets.all(16.0), // Ajusta el espacio alrededor del botón
              child: Text(
                'Increment',
                style: TextStyle(
                    fontSize: 20.0), // Ajusta el tamaño de la fuente del texto
              ),
            ),
          ),
        ],
      ),
    );
  }
}

