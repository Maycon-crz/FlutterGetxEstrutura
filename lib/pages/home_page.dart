import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/route_name.dart';
import '../controllers/buscador_controller.dart';

class HomePage extends GetView<BuscadorController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 30,
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed(RouteName.count);
                },
                child: Text("Contador >>"),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 30,
              child: ElevatedButton(
                onPressed: () {
                  controller.findRegisters("More", controller.searchKey.text);
                  Get.toNamed(RouteName.buscador);
                },
                child: Text("Buscador >>"),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Funcionando");
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
