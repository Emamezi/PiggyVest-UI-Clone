import 'package:flutter/material.dart';

class Product {
  final String title1;
  final String title2;
  final Color color;
  final Color color2;
  final IconData icon;

  Product({
    @required this.title1,
    @required this.title2,
    @required this.color,
    this.color2,
    @required this.icon,
  });
}
