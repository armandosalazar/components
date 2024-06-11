import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5.0),
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://static-cse.canva.com/blob/975731/1600w-z_r_KC1WlmU.jpg'),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 5.0),
            child: const CircleAvatar(
              backgroundColor: Colors.pinkAccent,
              foregroundColor: Colors.white,
              child: Text('MN'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              right: 5.0,
            ),
            child: CircleAvatar(
              child: Text('AS'),
            ),
          ),
        ],
      ),
      body: const Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(
              'https://static-cse.canva.com/blob/975731/1600w-z_r_KC1WlmU.jpg'),
        ),
      ),
    );
  }
}
