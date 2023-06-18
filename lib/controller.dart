import 'package:get/get.dart';

class Controller extends GetxController {
  //inisialisasi variabel yang dibutuhkan
  var tomato = 0.obs;
  var cabbage = 0.obs;

  //fungsi untuk menambah jumlah tomat
  addTomato() {
    return tomato.value++;
  }

  //fungsi untuk mengurangi jumlah tomat
  removeTomato() {
    if (tomato.value > 0) {
      return tomato.value--;
    }
  }

  //fungsi untuk menambah jumlah cabbage
  addCabbage() {
    return cabbage.value++;
  }

  //fungsi untuk mengurangi jumlah cabbage
  removeCabbage() {
    if (cabbage.value > 0) {
      return cabbage.value--;
    }
  }

  //fungsi untuk menghitung jumlah tomat dan cabbage
  sumTotal() {
    return tomato.value + cabbage.value;
  }
}
