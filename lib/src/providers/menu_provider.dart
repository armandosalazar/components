import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> options = [];

  _MenuProvider() {
    // loadData();
  }

  // Corregimos esto para utilizar un Future Builder
  Future<List<dynamic>> loadData() async {
    // Aquí se regresa un future
    final data = await rootBundle.loadString('data/menu_opts.json');
    Map dataMap = json.decode(data);
    // print(data);
    // print(dataMap);
    // print(dataMap['nombreApp']);
    options = dataMap['rutas'];
    return options;
  }
}

final menuProvider = new _MenuProvider();
