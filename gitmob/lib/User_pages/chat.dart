// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gitmob/widgets/widgets.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChatBody(),
    );
  }
}

class ChatBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Center(child: text("Under Development")),
    );
  }
}
