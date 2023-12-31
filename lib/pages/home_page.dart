import 'package:fake_news/constantes.dart';
import 'package:fake_news/models/make_responsive.dart';
import 'package:fake_news/sections/banner_section.dart';
import 'package:fake_news/sections/contacts_section.dart';
import 'package:fake_news/sections/header_section.dart';
import 'package:fake_news/widgets/desktop_nav.dart';
import 'package:fake_news/widgets/drawer_small.dart';
import 'package:fake_news/widgets/mobile_nav.dart';
import 'package:flutter/material.dart';

import '../sections/articles_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    ScreenSize screenSize = MakeResponsive().getScreenSize(context);

    return Scaffold(
        appBar: (screenSize == ScreenSize.small) ? MobileNav() : DesktopNav(size: size),
        drawer: const DrawerSmall(),
        body:  SingleChildScrollView(
            child: Column(
              children: [
                HeaderSection(),
                Divider(
                    color: grisMoyen
                ),
                Divider(
                    color: grisMoyen
                ),
                ArticlesSection(),
                BannerSection(),
                ContactsSection(),
              ],
            )
        )
    );
  }
}
