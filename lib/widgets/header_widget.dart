import 'package:fake_news/constantes.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height / 2,
      width: size.width,
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 50, right: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Center the children vertically
            children: [
              Column(
                  children: [
                    Text(
                      title.toUpperCase(),
                      style: TextStyle(
                        // fontFamily: 'Source Sans',
                        color: orange,
                        fontSize: 60,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 50),
                    Text(
                      headerSlogan1.toUpperCase(),
                      style: TextStyle(
                        color: grisMoyen,
                        fontSize: 18,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10),
                    Text(
                      headerSlogan2.toUpperCase(),
                      style: TextStyle(
                        color: grisMoyen,
                        fontSize: 18,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ]
              )
            ],
          ),
        ),
      ),
    );
  }
}
