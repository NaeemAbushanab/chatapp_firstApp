import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant.dart';


  AppBar appBar({String? leadingPath, String? title, String? actionsPath}) {
    return AppBar(
      leading: Image.asset(leadingPath!),
      actions: [
        Image.asset(actionsPath!),
      ],
      backgroundColor: primaryColor,
      title: Center(child: Text(title!)),
      elevation:0 ,

    );
  }

