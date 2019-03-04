import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Message'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 256,
            width: 256,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/message-54-512.png"),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "You have no message!",
            style: TextStyle(
                fontSize: 25, color: Colors.grey, fontWeight: FontWeight.w600),
          )
        ],
      )),
    );
  }
}
