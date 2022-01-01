import 'package:flutter/material.dart';

class ShadowBackground extends StatelessWidget {
  final bool haveShadow;
  final String haveImg;
  const ShadowBackground(
      {Key? key, required this.haveShadow, required this.haveImg})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return haveShadow
        ? SizedBox(
            width: double.infinity,
            child: Image.asset(
              haveImg,
              fit: BoxFit.fitWidth,
            ),
          )
        : const SizedBox();
  }
}
