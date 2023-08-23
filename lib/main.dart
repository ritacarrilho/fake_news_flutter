import 'package:fake_news/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FakeNews());
}

class FakeNews extends StatelessWidget {
  const FakeNews({super.key});

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
