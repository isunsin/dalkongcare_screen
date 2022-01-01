import 'package:dalkongcare_screen/components/responsive_layout.dart';
import 'package:dalkongcare_screen/components/shadow_background.dart';
import 'package:dalkongcare_screen/models/proportion_container.dart';
import 'package:dalkongcare_screen/models/size_config.dart';
import 'package:flutter/material.dart';

class TemplateMain extends StatelessWidget {
  const TemplateMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Stack(
              children: <Widget>[
                Column(
                  children: const <Widget>[
                    ShadowBackground(haveShadow: false, haveImg: '')
                  ],
                ),
                ResponsiveLayout(mobileBody: _mobileBody())
              ],
            ),
          )),
    );
  }

  Widget _buildTop() {
    return const ProportionContainer(
      height: 23,
    );
  }

  Widget _buildMiddle() {
    return const ProportionContainer(
      height: 23,
    );
  }

  Widget _buildBottom() {
    return const ProportionContainer(
      height: 23,
    );
  }

  Widget _mobileBody() {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(30)),
      child: Column(
        children: [
          SizedBox(
            height: getProportionateScreenHeight(23),
          ),
          _buildTop(),
          SizedBox(height: getProportionateScreenHeight(23)),
          _buildMiddle(),
          SizedBox(height: getProportionateScreenHeight(23)),
          _buildBottom()
        ],
      ),
    );
  }

  Widget _tabletBody() {
    return Container();
  }

  Widget _desktopBody() {
    return Container();
  }
}
