import 'package:flutter/material.dart';
import 'package:submission_fkran_dicoding/model/product.dart';

import 'package:submission_fkran_dicoding/ui/detail_screen.dart';

class DetailMobilePage extends StatelessWidget {
  final Product product;

  const DetailMobilePage(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image(image: AssetImage(product.imageProducts)),
              SafeArea(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      FavoriteButton(),
                    ],
                  ),
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 24.0, top: 24.0),
            child: Text(
              product.title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 24, top: 8),
            width: 150,
            height: 45,
            decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(
                  16,
                )),
            child: Center(
              child: Text(product.price,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Inder')),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 24.0, right: 10.0, top: 8.0),
            child: Text(
              'Type: ${product.type}',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 24, right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(
                    top: 32.0,
                  ),
                  child: Text(
                    "Description",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 16.0, bottom: 16.0),
                    child: Text(
                      product.description,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    ));
  }
}
