import 'package:flutter/cupertino.dart';

class Avatar extends StatelessWidget {
  String photo;
  bool isOnline;

  Avatar(
      {Key? ke2y,
      this.photo = "assets/avatar/nonAvatar.png",
      this.isOnline = false})
      : super(key: ke2y);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(photo),
        Positioned(
          bottom: 0,
          right: 0,
          child:
              isOnline ? Image.asset('assets/icons/status.png') : Container(),
        )
      ],
    );
  }
}
