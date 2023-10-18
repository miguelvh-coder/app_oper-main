import 'package:app_oper/ui/controllers/dificultad.dart';
import 'package:app_oper/ui/controllers/answer.dart';
import 'package:app_oper/ui/controllers/result_writer.dart';
import 'package:app_oper/ui/controllers/progresion.dart';
import 'package:app_oper/ui/controllers/authentication_controller.dart';
import 'package:app_oper/ui/controllers/user_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loggy/loggy.dart';

import 'package:app_oper/ui/central.dart';
import 'ui/pages/content/pregunta.dart';

void main() {

  Loggy.initLoggy(
    logPrinter: const PrettyPrinter(
      showColors: true,
    ),
  );
  
  Get.put(result_writer());
  Get.put(dificultad());
  Get.put(answer());
  Get.put(progresion());
  //Get.put(AuthenticationController());
  //Get.put(UserController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'app_oper Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Text('app_oper Demo'),
          ),
          //body: const Central(),    //ir a la pagina de inicio
          body: const CalculatorApp(),   //ir a la pagina de inicio
        ));

  }
}

//LISTO