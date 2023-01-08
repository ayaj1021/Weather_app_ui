import 'package:flutter/material.dart';
import 'package:weather_app_ui/App_styles/app_styles.dart';

class BigNumDegree extends StatelessWidget {
  final String text;
  const BigNumDegree({
    Key? key, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: Styles.headLine1,
        ),
        Container(
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
              border: Border.all(color: Colors.white, width: 2)),
        )
      ],
    );
  }
}
