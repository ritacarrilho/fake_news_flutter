import 'package:fake_news/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FakeNews());
}

// stateless(affichage) vs statefull(reactivité et dynamism)
class FakeNews extends StatelessWidget {
  const FakeNews({super.key});

  // affichage des composants
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Fake News Press",
      theme: ThemeData(
          primarySwatch: Colors.teal
      ),
      home: const HomePage(),
    );
  }
}
