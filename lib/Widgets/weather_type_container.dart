import 'package:flutter/material.dart';
import 'package:weather_app_ui/App_styles/app_styles.dart';

class WeatherTypeContainer extends StatelessWidget {
  final String degreeText;
  final String image;
  final String timeText;
  const WeatherTypeContainer({
    Key? key,
    required this.degreeText,
    required this.image,
    required this.timeText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: 90,
      width: 62,
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(17)),
      child: Column(
        children: [
          Text(
            degreeText,
            style: Styles.headLine9,
          ),
          Image(image: AssetImage(image)),
          Text(
            timeText,
            style: Styles.headLine9,
          ),
        ],
      ),
    );
  }
}
