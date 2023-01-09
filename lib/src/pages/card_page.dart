import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text('Card Page'),
            Text(
              'Subtitle of page',
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(15.0),
        children: <Widget>[
          _cardTypeOne(),
        ],
      ),
    );
  }

  Widget _cardTypeOne() {
    return Card(
      child: Padding(
        // padding: EdgeInsets.all(10.0),
        padding: EdgeInsets.only(left: 10.0, top: 20.0, right: 10.0),
        child: Column(
          children: [
            ListTile(
              title: Text('Title of Card'),
              subtitle: Text(
                  'Subtitle of card, with different content to learn, and get knowledge'),
              leading: Icon(
                Icons.photo_album,
                color: Colors.blue,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Dejo de funcionar y cambio por TextButton
                // FlatButton(
                //   onPressed: () {},
                //   child: Text('Cancelar'),
                // ),
                TextButton(
                  onPressed: () {},
                  child: Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Ok'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
