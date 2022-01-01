import 'package:dalkongcare_screen/models/size_config.dart';
import 'package:dalkongcare_screen/screens/chat/components/chat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ChatBox extends StatelessWidget {
  final Chat chat;
  const ChatBox({Key? key, required this.chat}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    // final double getBoxSize = MediaQuery.of(context).size.width - 70;
    return Padding(
      padding: EdgeInsets.only(
          left: getProportionateScreenWidth(16),
          right: getProportionateScreenWidth(54),
          bottom: getProportionateScreenHeight(5)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildIcon(),
          SizedBox(
            width: getProportionateScreenWidth(9),
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildNickNameAndTime(),
              SizedBox(
                height: getProportionateScreenHeight(7),
              ),
              _buildTalkBoxs()
            ],
          ))
        ],
      ),
    );
  }

  Widget _buildIcon() {
    return SvgPicture.asset(
      chat.icon!,
      width: getProportionateScreenWidth(33),
      height: getProportionateScreenHeight(33),
      fit: BoxFit.fitWidth,
    );
  }

  Widget _buildNickNameAndTime() {
    return Row(
      children: [
        Text(
          chat.nickName,
          style: TextStyle(
              fontSize: getProportionateTextHeight(10),
              color: const Color(0xffa9a9a9)),
        ),
        SizedBox(
          width: getProportionateScreenWidth(6),
        ),
        Text(
          chat.talkTime,
          style: TextStyle(
              fontSize: getProportionateTextHeight(8),
              color: const Color(0x80a9a9a9)),
        )
      ],
    );
  }

  Widget _buildTalkBoxs() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: chat.talks.map((e) => _buildTalkBox(e)).toList(),
    );
  }

  Widget _buildTalkBox(String talk) {
    return Container(
      padding: EdgeInsets.fromLTRB(
          getProportionateScreenWidth(12.0),
          getProportionateScreenHeight(10.0),
          getProportionateScreenWidth(12.0),
          getProportionateScreenHeight(9.0)),
      margin: EdgeInsets.only(bottom: getProportionateScreenHeight(8)),
      decoration: BoxDecoration(
          color: chat.nickName == ''
              ? const Color(0xffd94b41)
              : const Color(0xfff2f2f2),
          borderRadius: BorderRadius.circular(getProportionateScreenWidth(12))),
      child: Text(
        talk,
        style: TextStyle(
            fontSize: getProportionateTextHeight(12),
            height: getProportionateScreenHeight(1.1),
            color: chat.nickName == ''
                ? const Color(0xffffffff)
                : const Color(0xff000000)),
        textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
        textAlign: TextAlign.left,
      ),
    );
  }
}
