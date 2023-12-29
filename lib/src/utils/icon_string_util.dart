import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open,
  'warning': Icons.warning
};

Icon getIcon(String name) {
  return Icon(_icons[name], color: Colors.blue);
}
