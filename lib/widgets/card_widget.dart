import 'package:fake_news/constantes.dart';
import 'package:flutter/material.dart';
import '../models/card_obj.dart';


class CardWidget extends StatefulWidget {
  final Size size;
  final CardObj card;

  const CardWidget({required this.size, required this.card});

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        child: Column(
            children: [
              SizedBox(
                  height: widget.size.height,
                  width: widget.size.width,

                  child: ClipRRect(
                    child: Image.asset(widget.card.image, fit: BoxFit.cover),
                  )
              ),
              const Padding(padding: EdgeInsets.only( top:30 )),

              Container(
                decoration: BoxDecoration(
                color: grisMoyen,
                border: Border.all(color: grisMoyen),
                borderRadius: BorderRadius.circular(7.0)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child:
                    Text(
                        widget.card.date,
                        style:  TextStyle(
                          letterSpacing: 1.5,
                          backgroundColor: grisMoyen,
                          color: grisLeger,
                          fontSize: 15,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w200,
                        )
                    ),
                  )
              ),
              const Padding(padding: EdgeInsets.only( top:30 )),
              Text(
                  widget.card.title.toUpperCase(),
                  style: TextStyle(
                    letterSpacing: 1.5,
                    color: grisMoyen,
                    fontWeight: FontWeight.w700,
                  )
              ),
              const Padding(padding: EdgeInsets.only( top:30 )),
              SizedBox(
                  height: widget.size.height,
                  width: widget.size.width,

                  child: ClipRRect(
                    child: Text(
                        widget.card.content,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          letterSpacing: 1.5,
                          color: grisMoyen,
                          fontWeight: FontWeight.w200,
                        )
                    )
                  )
              ),
            ]
        )
    );
  }
}

