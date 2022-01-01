import 'package:dalkongcare_screen/components/shadow_background.dart';
import 'package:dalkongcare_screen/models/size_config.dart';
import 'package:flutter/material.dart';

class TemplateStackMain extends StatelessWidget {
  const TemplateStackMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    int currentIndex = 0;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    const ShadowBackground(haveShadow: false, haveImg: '')
                  ],
                ),
                IndexedStack(
                  index: currentIndex,
                  children: <Widget>[
                    Container(
                      color: Colors.grey,
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
