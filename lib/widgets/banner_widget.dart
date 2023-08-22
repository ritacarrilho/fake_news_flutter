
import 'package:fake_news/constantes.dart';
import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height / 2,
      width: size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: Image.asset(bannerImage).image,
              fit: BoxFit.cover
          )
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 50, right: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center the children vertically
            children: [
              Column(
                children: [
                Text(
                  bannerText.toUpperCase(),
                  style: TextStyle(
                    color: grisLiger,
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  bannerAuthor.toUpperCase(),
                  style: TextStyle(
                    color: grisLiger,
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),]
              )
            ],
          ),
        ),
      ),
    );
  }
}
