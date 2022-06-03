import 'package:flutter/material.dart';

import 'details_page.dart';

class HeroPage extends StatelessWidget {
  const HeroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hero Example')),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DetailsPage(index: index),
              ));
            },
            title: Text('Item $index'),
            leading: Hero(
              tag: 'hero-image-$index',
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://i.imgur.com/cJ0Sw2E.png'),
              ),
            ),
          );
        },
      ),
    );
  }
}
