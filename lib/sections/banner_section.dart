import 'package:fake_news/widgets/banner_widget.dart';
import 'package:flutter/material.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        BannerWidget(),
      ],
    );
  }
}
