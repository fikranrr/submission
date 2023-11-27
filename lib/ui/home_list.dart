import 'package:flutter/material.dart';
import 'package:submission_fkran_dicoding/ui/detail_screen.dart';

import '../../model/product.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final Product product = listOfProducts[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailScreen(product);
            }));
          },
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
            child: Card(
                color: const Color(0xFFFFFFFF),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          flex: 2,
                          child:
                              Image(image: AssetImage(product.imageProducts))),
                      Expanded(
                          flex: 4,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Text(product.title,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 21.0,
                                        fontWeight: FontWeight.bold)),
                                Padding(padding: EdgeInsets.only(top: 4.0)),
                                Text(
                                  product.type,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.0,
                                      fontFamily: 'Poppins'),
                                ),
                                SizedBox(height: 28.0),
                                Text(
                                  product.price,
                                  style: TextStyle(
                                      color: const Color(0xFFD05E2A),
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                )),
          ),
        );
      },
      itemCount: listOfProducts.length,
    );
  }
}
