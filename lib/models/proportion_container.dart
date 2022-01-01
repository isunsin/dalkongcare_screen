import 'package:dalkongcare_screen/models/size_config.dart';
import 'package:flutter/material.dart';

class ProportionContainer extends StatelessWidget {
  final double height;
  const ProportionContainer({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(300, 100, 100, 0.2),
      height: getProportionateScreenHeight(height),
    );
  }
}
