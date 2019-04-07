import 'package:flutter/material.dart';

class PaymentMethodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Address"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Text(
                "Please choose your payment method",
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromRGBO(66, 66, 66, 1),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              RadioListTile<String>(
                title: Text(
                  "Cash on delivery",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                groupValue: "mb",
                onChanged: (mb) {},
                value: "mb",
              ),
              RadioListTile<String>(
                title: Text("Cash on delivery"),
                groupValue: "mb",
                onChanged: (mb) {
                  print("dcmm");
                },
                value: "dmm2",
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: RaisedButton(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
