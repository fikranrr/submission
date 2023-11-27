import 'package:flutter/material.dart';
import 'package:submission_fkran_dicoding/ui/home_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Food & Drink"),
          backgroundColor: Colors.amber,
        ),
        body: ProductList());
  }
}
