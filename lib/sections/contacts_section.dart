import 'package:fake_news/constantes.dart';
import 'package:fake_news/models/make_responsive.dart';
import 'package:flutter/material.dart';

class ContactsSection extends StatefulWidget {
  const ContactsSection({super.key});

  @override
  State<ContactsSection> createState() => _ContactsSectionState();
}

class _ContactsSectionState extends State<ContactsSection> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    ScreenSize screenSize = MakeResponsive().getScreenSize(context);
    bool isSmall = (screenSize == ScreenSize.small);
    double textSize = isSmall ? 20 : 30;

    return Container(
      height: size.height / 2,
      width: size.width,
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 50, right: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center the children vertically
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("DES QUESTIONS ? ",
                      style: TextStyle(
                        color: grisSombre,
                        fontSize: textSize,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                          overflow: TextOverflow.ellipsis
                      ),
                      textAlign: TextAlign.center,),
                    Text("CONTACTEZ-NOUS !",
                      style: TextStyle(
                          color: grisSombre,
                          fontSize: textSize,
                          fontWeight: FontWeight.bold,
                          overflow: TextOverflow.ellipsis
                      ), textAlign: TextAlign.center,),
                    Expanded(child: Container())
                    ]
              )
            ],
          ),
        ),
      ),
    );
  }
}
