import 'package:chatapp/constant.dart';
import 'package:flutter/material.dart';

import 'components/app_bar.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat App',
      home: ChatApp(),
    );
  }
}

class ChatApp extends StatefulWidget {
  const ChatApp({Key? key}) : super(key: key);

  @override
  State<ChatApp> createState() => _ChatAppState();
}

class _ChatAppState extends State<ChatApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: appBar(
          leadingPath: 'assets/icons/edit.png',
          title: "Chat App",
          actionsPath: 'assets/icons/search.png'),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.amber,
            height: 100,
          );
        },
        itemCount: 10,
        padding: EdgeInsets.all(10),
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 10,width: 10,);
        },


      ),
    );
  }
}
