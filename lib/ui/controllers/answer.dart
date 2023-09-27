import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import 'dart:math';


class answer extends GetxController {
  final _respuesta = 0.obs;
  int get respuesta => _respuesta.value;

  final _a = 0.obs;
  int get a => _a.value;

  final _b = 0.obs;
  int get b => _b.value;

  final _oper = "".obs;
  String get oper => _oper.value;

 
  



  generar_q(int da, db) {
    if (da==1){
      _a.value = Random().nextInt(10);
    }else{
      _a.value = Random().nextInt(90) + 10;
    }

    if (db==1){
      _b.value = Random().nextInt(10);
    }else{
      _b.value = Random().nextInt(90) + 10;
    }

    var o = Random().nextInt(4);
    if (o==0){
      _oper.value="+";
      _respuesta.value = a+b;
    }else if(o==1){
      _oper.value="-";
      _respuesta.value = a-b;
    }else if(o==1){
      _oper.value="*";
      _respuesta.value = a*b;
    }else if(o==1){
      _oper.value="/";
      _respuesta.value = (a/b).round();
    }

  } 



}

//AUN NO