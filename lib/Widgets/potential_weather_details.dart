import 'package:flutter/material.dart';
import 'package:weather_app_ui/App_styles/app_styles.dart';
import 'package:weather_app_ui/Widgets/big_num_degree.dart';

class PotentialWeatherDetails extends StatelessWidget {
  final String dayText;
  final String dateText;
  final String image;
  const PotentialWeatherDetails({
    Key? key,
    required this.dayText,
    required this.dateText,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //27 degrees section
        const BigNumDegree(
          text: '27',
        ),
        //Day and Date Section
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              dayText,
              style: Styles.headLine5,
            ),
            Text(
              dateText,
              style: Styles.headLine6,
            ),
          ],
        ),
        //Cloud image section
        Container(
          height: 87,
          width: 100,
          child: Image(
            image: AssetImage(image),
            // fit: BoxFit.cover,
            //height: 5,
            //width: 5,
          ),
        )
      ],
    );
  }
}
