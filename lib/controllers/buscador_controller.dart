import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../repository/external_data.dart';

class BuscadorController extends GetxController {
  var titulo = "Listando e Buscando".obs;

  final TextEditingController searchKey = TextEditingController();

  List foundUsers = [].obs;
  int count = 0;

  findRegisters(String metodo, String chave) {
    switch (metodo) {
      case "Search":
        if (chave.isNotEmpty) {
          foundUsers.clear();
          count = 0;
          for (var i = 0; i < allUsers.length; i++) {
            var string = allUsers[i]["name"].toLowerCase();
            chave = chave.toLowerCase();
            if (string.contains(chave.toLowerCase()) == true) {
              foundUsers.add(allUsers[i]);
            }
          }
        } else {
          searchKey.clear();
          foundUsers.clear();
          count = 5;
          foundUsers.clear();
          for (var i = 0; i < count; i++) {
            foundUsers.add(allUsers[i]);
          }
        }
        break;
      case "Clean":
        searchKey.clear();
        foundUsers.clear();
        count = 0;
        break;
      case "More":
        if (count < allUsers.length) {
          count = count + 5;
          foundUsers.clear();
          for (var i = 0; i < count; i++) {
            foundUsers.add(allUsers[i]);
          }
        }
        break;
    }
  }
}
