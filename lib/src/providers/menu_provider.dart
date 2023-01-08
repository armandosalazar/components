import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {
  List<dynamic> options = [];

  _MenuProvider() {
    loadData();
  }

  void loadData() {
    // Aquí se regresa un future
    rootBundle.loadString('data/menu_opts.json').then((data) => print(data));
  }
}

final menuProvider = new _MenuProvider();