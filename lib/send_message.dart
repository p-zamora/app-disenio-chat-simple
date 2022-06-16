import 'package:flutter/material.dart';

class SentMessage extends StatelessWidget {
  /* final ChatMessage chatMessage;
  SentMessage({this.chatMessage}); */
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Material(
          color: Colors.blue,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomRight: Radius.circular(20.0),
            bottomLeft: Radius.circular(20.0),
          ),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Container(
              width: 230.0,
              child: Text('Mensajeeee ssssssssssssssss sssssssssssss ssssssssssssss ss ssssssss sss',
                  style: TextStyle(color: Colors.white)),
            ),
          ),
        )
      ],
    );
  }
}
