import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LikeButton extends StatefulWidget {
  final bool isLikedInitialValue;
  final double width;
  final double height;
  const LikeButton({
    Key? key,
    this.isLikedInitialValue = false,
    this.width = 50,
    this.height = 50,
  }) : super(key: key);

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late bool isLiked = widget.isLikedInitialValue;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
      value: isLiked ? 1.0 : 0.0,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (isLiked) _animationController.reverse();
        if (!isLiked) _animationController.forward();
        setState(() => isLiked = !isLiked);
      },
      child: Column(
        children: [
          Lottie.network(
            'https://assets7.lottiefiles.com/packages/lf20_iO7T7y.json',
            width: 30,
            height: 30,
            animate: false,
            repeat: false,
            controller: _animationController,
          ),
        ],
      ),
    );
  }
}
