import 'package:diseniochat/received_message.dart';
import 'package:diseniochat/send_message.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ChatPageState();
  }
}

class _ChatPageState extends State<ChatPage> {
  ScrollController _scrollController = new ScrollController();
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Pablo'),
        ),
        body: Column(
          children: <Widget>[
            new Flexible(
                child: ListView.builder(
              controller: _scrollController,
              reverse: true,
              // shrinkWrap: true,
              itemCount: 12,
              itemBuilder: (context, int index) {
                double cWidth = MediaQuery.of(context).size.width * 0.8;
                 /* return Container(
                      padding: const EdgeInsets.all(16.0),
                      width: cWidth,
                      child: ReceivedMessage());  */
                return Container(
                    padding: const EdgeInsets.all(16.0),
                    width: cWidth,
                    child: SentMessage());
              },
            )),
            // VideoPlayer(),
            Row(
              children: <Widget>[              
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: TextFormField(                  
                        autofocus: false,
                        controller: myController,
                        decoration: new InputDecoration(
                          hintText: "Enviar mensaje",
                        ),
                        keyboardType: TextInputType.text),
                  ),
                ),
                GestureDetector(
                  child: Icon(
                    Icons.send,
                    color: Theme.of(context).primaryColor,
                  ),
                  onTap: () {
                    /*   chatStte.sendChatMessage({
                      "to": onlineUser,
                      "from": authstate.getUserLoginDetails().userDetails,
                      "message": myController.text
                    });
                    myController.clear(); */
                  },
                )
              ],
            ),
          ],
        ));
  }

  @override
  void dispose() {
    myController.dispose();
    _scrollController.dispose();
    super.dispose();
  }
}
