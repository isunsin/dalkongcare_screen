import 'package:dalkongcare_screen/components/custom_appBar.dart';
import 'package:dalkongcare_screen/components/responsive_layout.dart';
import 'package:dalkongcare_screen/components/shadow_background.dart';
import 'package:dalkongcare_screen/models/size_config.dart';
import 'package:dalkongcare_screen/screens/chat/components/chat_box.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'components/chat.dart';
// import 'dart:io';
// import 'dart:async';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(56),
            child: CustomAppBar(
                hasBack: true,
                title: chats[0].nickName,
                trailing:
                    IconButton(onPressed: () {}, icon: const Icon(Icons.menu))),
          ),
          body: Stack(
            children: <Widget>[
              Column(
                children: const <Widget>[
                  ShadowBackground(
                      haveShadow: false,
                      haveImg: 'assets/shadow/chat_screen.png')
                ],
              ),
              ResponsiveLayout(mobileBody: _mobileBody())
            ],
          )),
    );
  }

  Widget _buildMiddle() {
    return SizedBox(
      child: ListView.builder(
          // padding: EdgeInsets.only(top: 100),
          itemCount: chats.length,
          itemBuilder: (BuildContext context, int index) {
            return ChatBox(chat: chats[index]);
          }),
    );
  }

  Widget _buildBottom() {
    return Padding(
      padding: EdgeInsets.only(
          left: getProportionateScreenWidth(5),
          right: getProportionateScreenWidth(17)),
      child: SizedBox(
        height: getProportionateScreenHeight(56),
        child: Row(
          children: [
            IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  _pickImage();
                },
                icon: Icon(
                  Icons.add,
                  size: getProportionateScreenHeight(32),
                  color: const Color.fromRGBO(169, 169, 169, 0.5),
                )),
            SizedBox(
              width: getProportionateScreenWidth(10),
            ),
            Expanded(
              child: SizedBox(
                height: getProportionateScreenHeight(36),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(
                          left: getProportionateScreenWidth(16)),
                      hintText: '메시지를 입력해 주세요.',
                      hintStyle:
                          TextStyle(fontSize: getProportionateTextHeight(12)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                              getProportionateScreenHeight(13)))),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _mobileBody() {
    return Column(
      children: [Expanded(child: _buildMiddle()), _buildBottom()],
    );
  }

  Widget _tabletBody() {
    return Container();
  }

  Widget _desktopBody() {
    return Container();
  }

  Future _pickImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return;
  }
}
