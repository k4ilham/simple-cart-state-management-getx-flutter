import 'controller.dart';
import 'total_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//saat menggunakan state management kita tidak perlu menggunakan stateful lagi
// ignore: use_key_in_widget_constructors
class Home extends StatelessWidget {
  //inisialisai
  final Controller c = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                      image: NetworkImage(
                        'https://cdn.pixabay.com/photo/2011/03/16/16/01/tomatoes-5356__340.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => {
                        //saat ditap maka variabel tomat akan bertambah
                        //fungsi addTomato() bisa dilihat di file controller.dart
                        c.addTomato(),
                      },
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black12,
                        ),
                        child: const Icon(Icons.add),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    //variabel tomato akan secara reaktif bertambah atau berkurang saat tombol + atau - ditap
                    //perlu dibungkus dengan Obx() agar variabel di dalamnya dapat berubah secara reaktif
                    Obx(
                      () => Text(
                        c.tomato.toString(),
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () => {
                        //saat ditap maka variabel tomat akan berkurang
                        //fungsi removeTomato() bisa dilihat di file controller.dart
                        c.removeTomato(),
                      },
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black12,
                        ),
                        child: const Icon(Icons.remove),
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                      image: NetworkImage(
                        'https://cdn.pixabay.com/photo/2018/10/03/21/57/cabbage-3722498_960_720.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Row(
                  children: [
                    GestureDetector(
                      //saat ditap maka variabel cabbage akan bertambah
                      //fungsi addCabbage() bisa dilihat di file controller.dart
                      onTap: () => c.addCabbage(),
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black12,
                        ),
                        child: const Icon(Icons.add),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    //variabel cabbage akan secara reaktif bertambah atau berkurang saat tombol + atau - ditap
                    //perlu dibungkus dengan Obx() agar variabel di dalamnya dapat berubah secara reaktif
                    Obx(
                      () => Text(
                        c.cabbage.toString(),
                        style: const TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      //saat ditap maka variabel cabbage akan berkurang
                      //fungsi removeCabbage() bisa dilihat di file controller.dart
                      onTap: () => c.removeCabbage(),
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black12,
                        ),
                        child: const Icon(Icons.remove),
                      ),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  // TotalPage adalah halaman yang dituju
                  MaterialPageRoute(
                    builder: (context) => TotalPage(),
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 40),
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue,
                ),
                child: const Center(
                  child: Text(
                    "Check Total",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
