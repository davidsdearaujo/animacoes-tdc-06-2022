import 'package:flutter/material.dart';

import 'like_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lottie Example')),
      body: Center(
        child: LikeButton(isLikedInitialValue: true),
      ),
    );
  }
}
