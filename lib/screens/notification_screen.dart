import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification'),
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
                    image: AssetImage("assets/images/notification-512.png"),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "You have no notification!",
            style: TextStyle(
                fontSize: 25, color: Colors.grey, fontWeight: FontWeight.w600),
          )
        ],
      )),
    );
  }
}
