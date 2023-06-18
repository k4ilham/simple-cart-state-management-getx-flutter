import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

// ignore: use_key_in_widget_constructors
class TotalPage extends StatelessWidget {
  //inisialisasi
  final Controller c = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Total Product"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text(
              "Total Product",
              style: TextStyle(fontSize: 25),
            ),
            Text(
              //mengambil hasil perhitungan dari tomat dan cabbage
              c.sumTotal().toString(),
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
