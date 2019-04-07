import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Search"),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Text(
                "Hello I'm Treva. \nWhat would you like to search?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Material(
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "Find what you want",
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Popular keyword",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Wrap(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: ActionChip(
                      labelStyle: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      label: Text("Shirts"),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ));
  }
}
