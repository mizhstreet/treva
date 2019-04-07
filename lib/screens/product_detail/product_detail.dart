import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class ProductDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Product Detail",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white10,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.grey,
            ),
          ),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton.icon(
                padding: EdgeInsets.symmetric(vertical: 15),
                icon: Icon(Icons.local_offer),
                label: Text("Buy now"),
                onPressed: () {},
              ),
            ),
            Expanded(
              child: FlatButton.icon(
                padding: EdgeInsets.symmetric(vertical: 15),
                icon: Icon(Icons.add_shopping_cart),
                label: Text("Add"),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 250,
            child: Swiper(
              itemBuilder: (BuildContext context, int index) {
                return Image.asset(
                    "assets/images/2edc1d8a0e85bac779a7dff7bd1dc18d.jpg");
              },
              itemCount: 3,
              control: SwiperControl(),
              pagination: SwiperPagination(),
              onTap: (int i) {
                print("picture $i");
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Áo thun ba lỗ cổ tròn nam 03",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "\$2,000",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.lineThrough),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "\$ 1,300",
                  style: TextStyle(
                    color: Colors.pinkAccent,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Size",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 60,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Row(
                        children: <Widget>[_sizeOption("M")],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Color",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 60,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Row(
                        children: <Widget>[_colorOption()],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Description",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Áo Sơ Mi Nam Cổ Tàu Form Rộng Zavans luôn là sự lựa chọn hàng đầu của giới công sở hiện nay, với kiểu dáng lịch thiệp, đường may đẹp và chất lượng vải cao cấp",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _sizeOption(String value) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22.5),
        border: Border.all(
          color: Colors.grey,
          width: 3,
        ),
      ),
      child: Center(
        child: Text(
          value,
          style: TextStyle(fontWeight: FontWeight.w700, color: Colors.grey),
        ),
      ),
    );
  }

  Widget _colorOption() {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22.5),
        color: Colors.teal,
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
      ),
    );
  }
}
