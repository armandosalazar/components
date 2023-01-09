import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Avatars'),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://static-cse.canva.com/blob/975731/1600w-z_r_KC1WlmU.jpg'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 5.0),
            child: CircleAvatar(
              child: Text('MN'),
              backgroundColor: Colors.pinkAccent,
              foregroundColor: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 5.0,
            ),
            child: CircleAvatar(
              child: Text('AS'),
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(
              'https://static-cse.canva.com/blob/975731/1600w-z_r_KC1WlmU.jpg'),
        ),
      ),
    );
  }
}
