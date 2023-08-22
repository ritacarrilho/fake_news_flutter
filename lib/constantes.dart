import 'dart:ui';

import 'package:fake_news/models/menu_button_object.dart';
import 'package:fake_news/pages/article_page.dart';
import 'package:fake_news/pages/home_page.dart';
import 'package:fake_news/pages/trucs_en_troc_page.dart';
import 'package:fake_news/widgets/hover_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Images
String bannerImage = "images/banner.jpg";


// Colors
Color fondClair = const Color.fromRGBO(255, 255, 255, 1);
Color fondSombre = const Color.fromRGBO(240, 240, 240, 1);
Color fondGris = const Color.fromRGBO(68, 68, 68, 1);
Color gris = const Color.fromRGBO(102, 102, 102, 1);
Color hover = const Color.fromRGBO(231, 210, 209, 1);
Color grisLiger = const Color.fromRGBO(229, 229, 229, 1);
Color grisMoyen = const Color.fromRGBO(119, 119, 119, 1);
Color grisSombre = const Color.fromRGBO(60, 60, 60, 1);
Color orange = const Color.fromRGBO(237, 120, 106, 1);
Color orangeHover = const Color.fromRGBO(253, 135, 122, 1);
Color rouge = const Color.fromRGBO(204, 0, 0, 1);


// Text
String bannerText = " \"On peut tromper une fois mille personnes, mais on ne peut pas tromper mille fois une Personne\"  - ";
String bannerAuthor = "Émile";
String title = "Fake News II";
String headerSlogan1 = "Il revient et il est pas content !";
String headerSlogan2 = "Mythoné en PHP et MySQL.";

// Menu
List<MenuButtonObject> menuButton = [
  MenuButtonObject(text: "REMBOBINER", icon: const Icon(Icons.home), destination: HomePage()),
  MenuButtonObject(text: "TRUCS EN TROC", icon: const Icon(Icons.query_stats), destination: TrucsEnTrocsPage()),
  MenuButtonObject(text: "ROUAGES", icon: const Icon(Icons.settings), destination: ArticlePage()),
];

List<HoverButton> menuButtonHover() =>  menuButton.map((button) => HoverButton(button: button)).toList();