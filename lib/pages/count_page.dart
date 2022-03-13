import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/count_controller.dart';
import '../routes/route_name.dart';

class CountPage extends GetView<CountController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina Contador"),
      ),
      body: Center(
        child: Obx(
          () => Text("${controller.count}"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => controller.add(),
      ),
    );
  }
}
