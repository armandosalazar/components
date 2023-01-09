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
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(15.0),
        children: <Widget>[
          _cardTypeOne(),
          SizedBox(height: 15.0),
          _cardTypeTwo(),
          SizedBox(height: 15.0),
          _cardTypeOne(),
          SizedBox(height: 15.0),
          _cardTypeTwo(),
          SizedBox(height: 15.0),
          _cardTypeOne(),
          SizedBox(height: 15.0),
          _cardTypeTwo(),
          SizedBox(height: 15.0),
          _cardTypeOne(),
          SizedBox(height: 15.0),
          _cardTypeTwo(),
        ],
      ),
    );
  }

  Widget _cardTypeOne() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
      ),
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

  Widget _cardTypeTwo() {
    final card = Container(
      // Hace que la nada se salga del rededor de la tarjeta
      // clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image:
                NetworkImage('https://images4.alphacoders.com/975/97548.jpg'),
            height: 254.0,
            fit: BoxFit.contain,
            fadeInDuration: Duration(milliseconds: 200),
          ),
          // Image(
          //   image:
          //       NetworkImage('https://images4.alphacoders.com/975/97548.jpg'),
          // ),
          Container(
            child: Text(
              'Description of image',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            padding: EdgeInsets.all(10.0),
          )
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, 5.0))
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}
