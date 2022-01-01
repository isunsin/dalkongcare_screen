class Chat {
  String? icon;
  String nickName;
  String talkTime;
  List<String> talks;
  Chat(
      {this.icon = 'assets/icons/listEmpty.svg',
      required this.nickName,
      required this.talkTime,
      required this.talks});
}

List<Chat> chats = [
  Chat(nickName: '율리맘', talkTime: '오후 4:19', talks: ['대화내용입니다']),
  Chat(nickName: '율리맘', talkTime: '오후 4:19', talks: [
    '대화내용입니다',
    '대화내용입니다. 대화 내용을 입력해주세요 최대입력범위 입니다.  최대 우측 54dp 남게 (안드로이드 기준) 1:1 채팅입니다.'
  ]),
  Chat(nickName: '율리맘', talkTime: '오후 5:20', talks: [
    '대화내용입니다. 대화 내용을 입력해주세요 최대입력범위 입니다.  최대 우측 54dp 남게 (안드로이드 기준) 1:1 채팅입니다.'
  ]),
  Chat(nickName: '율리맘', talkTime: '오후 4:19', talks: ['대화내용입니다']),
  Chat(nickName: '', talkTime: '오후 4:19', talks: [
    '대화내용입니다',
    '대화내용입니다. 대화 내용을 입력해주세요 최대입력범위 입니다.  최대 우측 54dp 남게 (안드로이드 기준) 1:1 채팅입니다.'
  ]),
];
