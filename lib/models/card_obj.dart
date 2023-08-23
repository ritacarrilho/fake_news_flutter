import 'package:flutter/material.dart';

class CardObj {
  String image;
  String date;
  String title;
  String content;
  Widget destination;

  CardObj({ required this.image, required this.date, required this.title, required this.content, required this.destination });
}