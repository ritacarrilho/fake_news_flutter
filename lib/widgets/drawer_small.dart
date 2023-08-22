import 'package:fake_news/constantes.dart';
import 'package:fake_news/models/menu_button_object.dart';
import 'package:flutter/material.dart';

class DrawerSmall extends StatelessWidget {
  const DrawerSmall({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView.separated(
          itemBuilder: (context, index){
              if(index == 0) {
                return Center(child: Text(""));
              } else {
                MenuButtonObject button = menuButton[index -1];
                return ListTile(
                  title: Text(button.text ?? ""),
                  onTap: (){
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => button.destination)
                    );
                  },
                );
              }
            },
          separatorBuilder: (context, item) {return Divider();},
          itemCount: menuButton.length + 1
      )
    );
  }
}
