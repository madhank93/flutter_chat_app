import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = TextEditingController();

  void _handleSubmit(String text) {
    _textController.clear();
  }

  Widget _textComposerWidget() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: <Widget>[
          Flexible(
            child: TextField(
              controller: _textController,
              onSubmitted: _handleSubmit,
              decoration: InputDecoration.collapsed(
                hintText: "Type a message",
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 4),
            child: IconButton(
              icon: Icon(
                Icons.send,
              ),
              onPressed: () => _handleSubmit(_textController.text),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _textComposerWidget();
  }
}
