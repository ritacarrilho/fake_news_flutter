
import 'package:fake_news/constantes.dart';
import 'package:flutter/material.dart';

class DesktopNav extends PreferredSize {
  Size size;

  DesktopNav({required this.size}): super(
      preferredSize: Size((size.width), (size.height )),
      child: Container(
          padding: EdgeInsets.all(10),
          color: fondClair,
        child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: menuButtonHover(),
                  ),
                )
              ]
          )
      )
  );

}