import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final int index;
  const DetailsPage({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Details')),
      body: Center(
        child: Column(
          children: [
            Text('Item $index'),
            Hero(
              tag: 'hero-image-$index',
              child: Image.network('https://i.imgur.com/cJ0Sw2E.png'),
            ),
            Text("Flutterando, Flutter Brazilian Comunity!"),
          ],
        ),
      ),
    );
  }
}
