import 'package:flutter/material.dart';

class ChatMessageList extends StatelessWidget {
  final String _name = 'Madhan';
  final String _text;

  ChatMessageList(this._text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 15),
            child: CircleAvatar(
              child: Text(_name[0]),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(_name, style: Theme.of(context).textTheme.subhead,),
              Container(
                margin: EdgeInsets.only(top: 5),
              ),
              Text(_text),
            ],
          )
        ],
      ),
    );
  }
}
