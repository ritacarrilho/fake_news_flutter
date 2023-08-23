import 'package:fake_news/constantes.dart';
import 'package:fake_news/models/card_obj.dart';
import 'package:fake_news/models/make_responsive.dart';
import 'package:fake_news/pages/article_page.dart';
import 'package:fake_news/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class ArticlesSection extends StatefulWidget {
  const ArticlesSection({super.key});

  @override
  State<ArticlesSection> createState() => _ArticlesSectionState();
}

class _ArticlesSectionState extends State<ArticlesSection> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    ScreenSize screenSize = MakeResponsive().getScreenSize(context);
    bool isSmall = (screenSize == ScreenSize.small);

    Size cardSize = isSmall ? size / 3.5 : size / 4;

    double padding = isSmall ? 20 : 50;
    double textSize = isSmall ? 20 : 30;

    return Padding(
        padding: EdgeInsets.only(top:100, bottom: 100, left: 50, right: 50),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("LES DERNIÈRES ",
                  style: TextStyle(
                    letterSpacing: 1.5,
                    color: grisSombre,
                    fontSize: textSize,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,),
                Text("FAKE NEWS !",
                  style: TextStyle(
                      color: grisSombre,
                      letterSpacing: 1.5,
                      fontSize: textSize,
                      fontWeight: FontWeight.bold
                  ), textAlign: TextAlign.center,),
                Expanded(child: Container()),
              ],
            ),
            Padding(padding: EdgeInsets.only( top: padding )),
            adaptedToSize(isSmall, cardSize),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context, rootNavigator: true).push(
                  MaterialPageRoute(builder: (context) => const ArticlePage()),
                );
              },
              style: ElevatedButton.styleFrom(
                primary: orange,
                onPrimary: grisSombre,
              ),
              child: Text("J'EN VEUX ENCORE !",
                style: TextStyle(
                    letterSpacing: 1.5,
                    color: grisLeger,
                    fontWeight: FontWeight.w700
                ), textAlign: TextAlign.center,),
            ),
          ],
        )
    );
  }

  Widget adaptedToSize(bool small, Size size){
    List<Widget> widgets = cards.map( (ev) => CardWidget(size: size, card: ev)).toList();

    return (small) ? Column(children:  widgets) : Row(children: widgets, mainAxisAlignment: MainAxisAlignment.spaceEvenly);
  }
}
