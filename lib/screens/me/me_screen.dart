import 'package:flutter/material.dart';

class MeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("My account"),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 150,
                  width: 150,
                  padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.purple, width: 5),
                    borderRadius: BorderRadius.circular(75),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(75),
                        image: DecorationImage(
                            image: AssetImage("assets/images/avatar.jpeg"),
                            fit: BoxFit.cover)),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Alisa Heart",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "@mbiuu",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: <Widget>[
                      _buildMenuItem(Icons.notifications_none, "Notification"),
                      _buildMenuItem(Icons.credit_card, "Payments"),
                      _buildMenuItem(Icons.local_shipping, "My Orders"),
                      _buildMenuItem(Icons.settings, "Setting"),
                      _buildMenuItem(Icons.lock, "Change password"),
                      _buildMenuItem(Icons.exit_to_app, "Log out"),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String name) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 1),
      child: InkWell(
        onTap: () {},
        child: Row(
          children: <Widget>[
            Padding(
              padding:
                  EdgeInsets.only(right: 25, left: 15, top: 20, bottom: 20),
              child: Icon(
                icon,
                size: 36,
                color: Color.fromRGBO(117, 117, 117, 1),
              ),
            ),
            Text(
              name,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(117, 117, 117, 1),
              ),
            )
          ],
        ),
      ),
    );
  }
}
