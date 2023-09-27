import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class dificultad extends GetxController {
  final _difficulty = 1.obs;

  get difficulty => _difficulty.value;


  diff_plus() => _difficulty.value++;
  diff_minus() => _difficulty.value--;
  diff_reset() => _difficulty.value = 1;
}

//LISTO