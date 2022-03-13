import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/buscador_controller.dart';

class BuscadorPage extends GetView<BuscadorController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          controller: controller.searchKey,
          cursorColor: Colors.white,
          onFieldSubmitted: (val) {
            controller.findRegisters("Search", controller.searchKey.text);
          },
          decoration: InputDecoration(
            hintText: " Search...",
            border: OutlineInputBorder(
              borderSide: const BorderSide(width: 3, color: Colors.red),
              borderRadius: BorderRadius.circular(15),
            ),
            prefixIcon: IconButton(
              icon: Icon(Icons.clear),
              color: Color.fromRGBO(93, 25, 72, 1),
              onPressed: () {
                controller.findRegisters("Clean", controller.searchKey.text);
              },
            ),
            suffixIcon: IconButton(
              icon: Icon(Icons.search),
              color: Color.fromRGBO(93, 25, 72, 1),
              onPressed: () {
                controller.findRegisters("Search", controller.searchKey.text);
              },
            ),
          ),
          style: TextStyle(color: Colors.white, fontSize: 15.0),
        ),
      ),
      body: Container(
        child: Obx(
          () => ListView.builder(
            itemCount: controller.foundUsers.length,
            itemBuilder: (context, index) => Card(
              key: ValueKey(controller.foundUsers[index]["id"]),
              color: Colors.amberAccent,
              elevation: 1,
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: ListTile(
                leading: Text(
                  controller.foundUsers[index]["id"].toString(),
                  style: const TextStyle(fontSize: 24),
                ),
                title: Text(controller.foundUsers[index]['name']),
                subtitle: Text('${controller.foundUsers[index]["age"].toString()} years old'),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 4,
        onPressed: () {
          controller.findRegisters("More", controller.searchKey.text);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
