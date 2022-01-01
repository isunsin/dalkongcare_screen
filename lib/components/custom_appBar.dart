import 'package:dalkongcare_screen/models/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  final Widget? trailing;
  final bool hasTextField;
  final bool hasBack;
  final String title;
  const CustomAppBar(
      {Key? key,
      this.trailing,
      this.hasBack = false,
      required this.title,
      this.hasTextField = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: <Widget>[
        Container(
          height: 56,
          color: Colors.white,
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(17)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset(
                    'assets/icons/back.svg',
                    width: 24,
                    height: 24,
                  )),
              const Spacer(),
              !hasTextField
                  ? Text(
                      title,
                      style: TextStyle(
                          fontFamily: 'NanumSquare_acL',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )
                  : Text('hasTextField'),
              const Spacer(),
              trailing ??
                  SizedBox(
                    width: 20,
                  )
            ],
          ),
        ),
        const Expanded(
            child: Divider(
          color: Color.fromRGBO(169, 169, 169, 1),
          height: 1,
        ))
      ],
    );
  }
}
