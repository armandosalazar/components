import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  AlertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alertas'),
      ),
      body: Center(
        // child: RaisedButton(
        //   onPressed: () {},
        //   child: Text('Enter'),
        // ),
        // RaisedButton ya no funciona
        // https://docs.flutter.dev/release/breaking-changes/buttons
        child: ElevatedButton(
          onPressed: () => _showAlert(context),
          child: Text('Show Alert'),
          // Nueva forma de redondear los botones
          style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.keyboard_backspace),
      ),
    );
  }

  void _showAlert(BuildContext context) {
    showDialog(
      context: context,
      // para que se cierre tocando fuera
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          title: Text('Title'),
          content: Column(
            // Para que la columna no se estire por completo y solo tome el mínimo
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Content of alert defined by Armando Salzar'),
              FlutterLogo(
                size: 70.0,
              )
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Ok'),
            )
          ],
        );
      },
    );
  }
}
