import 'package:flutter/material.dart';

class SignCard extends StatelessWidget {
  final String signImageUrl;

  final Color bgColor;
  const SignCard({
    super.key,
    required this.bgColor,
    required this.signImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Image(image: AssetImage(signImageUrl),),
    );
  }
}
