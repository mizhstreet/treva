import 'package:flutter/material.dart';

class DeliveryAddressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Address"),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Please enter your address information below",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromRGBO(66, 66, 66, 1),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Theme(
                  data: ThemeData(
                    primaryColor: Colors.red,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(labelText: "dmm"),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hasFloatingPlaceholder: true,
                    labelText: "Sax",
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                RaisedButton(
                  onPressed: () {},
                  color: Colors.purple,
                  child: Container(
                    width: 250,
                    padding: EdgeInsets.symmetric(
                      vertical: 15,
                    ),
                    child: Center(
                      child: Text(
                        "Next",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
