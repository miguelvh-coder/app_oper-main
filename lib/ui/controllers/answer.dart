import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class answer extends GetxController {
  final _respuesta = 0.obs;

  int get respuesta => _respuesta.value;


  newdigit(int a) => _respuesta.value = a;
}

//AUN NO