import 'package:fake_news/models/card_obj.dart';
import 'package:fake_news/models/menu_button_object.dart';
import 'package:fake_news/pages/article_page.dart';
import 'package:fake_news/pages/home_page.dart';
import 'package:fake_news/pages/trucs_en_troc_page.dart';
import 'package:fake_news/widgets/hover_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Images
String bannerImage = "images/banner.jpg";
String bookCardImage = "images/pic01.jpg";
String oilCardImage = "images/pic02.jpg";
String alienCardImage = "images/pic03.jpg";


// Colors
Color fondClair = const Color.fromRGBO(255, 255, 255, 1);
Color fondGris = const Color.fromRGBO(240, 240, 240, 1);
Color fondSombre = const Color.fromRGBO(68, 68, 68, 1);
Color orange = const Color.fromRGBO(237, 120, 106, 1);
Color orangeHover = const Color.fromRGBO(253, 136, 122, 1);
Color rouge = const Color.fromRGBO(204, 0, 0, 1);
Color grisLeger = const Color.fromRGBO(229, 229, 229, 1);
Color grisMoyen = const Color.fromRGBO(119, 119, 119, 1);
Color gris = const Color.fromRGBO(102, 102, 102, 1);
Color grisSombre = const Color.fromRGBO(60, 60, 60, 1);


// Text
String bannerText = " \"On peut tromper une fois mille personnes, mais on ne peut pas tromper mille fois une Personne\"  - ";
String bannerAuthor = "Émile";
String title = "Fake News II";
String headerSlogan1 = "Il revient et il est pas content !";
String headerSlogan2 = "Mythoné en PHP et MySQL.";
// Cards title
String bookCardTitle = "Comment ranger un livre";
String oilCardTitle = "Huile de palmipède";
String alienCardTitle = "Cérisier alien";
// Cards text
String bookCardText = "On vous ment depuis le début, il faut ranger les livres sur la tranche, c'est meilleur pour leur santé mentale. Le témoignage exclusif de Robert, dictionnaire de français";
String oilCardText = "Des chercheurs ont découvert qu'à cause de l'huille de palme quelle contient, une consommation excessive de pâte à tartiner provoquerait une mutation du pied en pâte de cannard. Les photos exclusives ici!";
String alienCardText = "Exclusif ! Les aliens sont parmi nous ! Ils se cachent dans les cerisiers déguisés en fleurs. L'interview exclusive de Bob l'extraterrestre";

double titleSize = 30;

// Menu
List<MenuButtonObject> menuButton = [
  MenuButtonObject(text: "REMBOBINER", icon: const Icon(Icons.home), destination: HomePage()),
  MenuButtonObject(text: "TRUCS EN TROC", icon: const Icon(Icons.query_stats), destination: TrucsEnTrocsPage()),
  MenuButtonObject(text: "ROUAGES", icon: const Icon(Icons.settings), destination: ArticlePage()),
];

List<HoverButton> menuButtonHover() =>  menuButton.map((button) => HoverButton(button: button)).toList();

// Cards
List<CardObj> cards = [
  CardObj(image: bookCardImage, date: "28/07/2020 08:57", title: bookCardTitle, content: bookCardText, destination: ArticlePage()),
  CardObj(image: oilCardImage, date: "26/07/2020 09:14", title: oilCardTitle, content: oilCardText, destination: ArticlePage()),
  CardObj(image: alienCardImage, date: "14/07/2020 12:18", title: alienCardTitle, content: alienCardText, destination: ArticlePage()),
];

List<CardObj> cardsList() =>  cards.map((card) => CardObj(image: card.image, date: card.date, title: card.title, content: card.content, destination: card.destination)).toList();
