import 'package:flutter/material.dart';

import 'package:submission_fkran_dicoding/model/product.dart';
import 'package:submission_fkran_dicoding/ui/detail_mobile.dart';

class DetailScreen extends StatelessWidget {
  final Product product;

  const DetailScreen(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    return DetailMobilePage(product);
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FavoriteButton();
}

class _FavoriteButton extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
