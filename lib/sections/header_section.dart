import 'package:fake_news/widgets/header_widget.dart';
import 'package:flutter/material.dart';

class HeaderSection extends StatefulWidget {
  const HeaderSection({super.key});

  @override
  State<HeaderSection> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderSection> {
  @override
  Widget build(BuildContext context) {
    return const HeaderWidget();
  }
}
