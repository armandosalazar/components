import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alertas'),
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
          // Nueva forma de redondear los botones
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
          ),
          child: const Text('Show Alert'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigator.pop(context);
          context.pop();
        },
        child: const Icon(Icons.keyboard_backspace),
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
          title: const Text('Title'),
          content: const Column(
            // Para que la columna no se estire por completo y solo tome el mínimo
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Content of alert defined by Armando Salazar'),
              FlutterLogo(
                size: 70.0,
              )
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Ok'),
            )
          ],
        );
      },
    );
  }
}
