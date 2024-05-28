import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final int cardColor;
  final String imgUrl;
  final String title;
  final String previousPrice;
  final String price;

  ProductCard(
      this.cardColor, this.imgUrl, this.title, this.previousPrice, this.price);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      // height: 320.0,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          border: Border.all(color: Colors.grey.withOpacity(.3), width: .2)),
      child: Row(
        children: <Widget>[
          SizedBox(
            height: 8.0,
          ),
          Container(
            margin: EdgeInsets.all(8),
            child: Image.network(imgUrl,
                width: 120.0, height: 120.0, fit: BoxFit.cover),
          ),
          Text(title, style: TextStyle(fontSize: 25.0, fontFamily: "Raleway")),
          SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.favorite),
                  onPressed: () {},
                ),
                Column(
                  children: <Widget>[
                    Text(previousPrice,
                        style: TextStyle(
                            color: Color(0xFFfeb0ba),
                            fontSize: 16.0,
                            fontFamily: "Helvetica")),
                    SizedBox(
                      height: 12.0,
                    ),
                    Text(price,
                        style:
                            TextStyle(fontSize: 28.0, fontFamily: "Helvetica")),
                  ],
                ),
                IconButton(
                  icon: Icon(Icons.card_travel),
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
