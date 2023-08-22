import 'package:fake_news/constantes.dart';
import 'package:fake_news/models/menu_button_object.dart';
import 'package:flutter/material.dart';
import '../models/menu_button_object.dart';

class HoverButton extends StatefulWidget {
  MenuButtonObject button;

  HoverButton ({required this.button});

  @override
  State<HoverButton> createState() => HoverButton_State();
}

class HoverButton_State extends State<HoverButton> {

  bool hoverValue = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: EdgeInsets.only(left: 8, right: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.button.text ?? "",
              style: TextStyle(
                color: (hoverValue) ? orangeHover : grisMoyen,
              ),
            ),
            // Container(
              // height: 2,
              // width: 50,
              // color: (hoverValue) ? orangeHover : orangeHover,
            // )
          ],
        ),
      ),
      onHover: (hover){
        setState(() {
          hoverValue = hover;
        });
      },
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return widget.button.destination;
            })
        );
      },
    );
  }
}