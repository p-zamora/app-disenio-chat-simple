import 'package:flutter/material.dart';

class ReceivedMessage extends StatelessWidget {
  //TODO change base64 image to url from S3 bucket
  /* final ChatMessage chatMessage;
  ReceivedMessage({this.chatMessage}); */
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Material(
              color: Colors.indigo,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
                bottomLeft: Radius.circular(20.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Container(
                  width: 230.0,
                  child: Text(
                    'Mensaje Recibido',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ))
        ],
      );
  }
}
