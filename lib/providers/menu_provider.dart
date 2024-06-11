import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuProvider {

  Future<List<dynamic>> loadData() async {
    final dataRaw = await rootBundle
        .loadString('data/menu_opts.json'); // Row data from json

    Map<String, dynamic> dataMap = json.decode(dataRaw); // Convert in to map
    // if (kDebugMode) print('raw 💗: $dataRaw 💗');
    // if (kDebugMode) print('map 💗: $dataMap 💗');
    // print(dataMap);
    // print(dataMap['nombreApp']);

    return dataMap['routes']; // return list of maps
  }
}

final menuProvider = _MenuProvider();
