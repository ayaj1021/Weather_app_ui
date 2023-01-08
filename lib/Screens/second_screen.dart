import 'package:flutter/material.dart';
import 'package:weather_app_ui/App_styles/app_styles.dart';
import 'package:weather_app_ui/Widgets/top_icons_container.dart';
import 'package:weather_app_ui/Widgets/weather_type_container.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      width: 50,
                      height: 45,
                      decoration: BoxDecoration(
                          //color: Colors.black,
                          border: Border.all(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.circular(8)),
                      child: const Image(
                        image: AssetImage('images/Vector-bg.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                    const TopIconsContainer(
                      iconData: Icons.notifications_outlined,
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                //Big Container
                Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      height: 186,
                      width: 334,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(34),
                          color: Colors.black,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black,
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: Offset.fromDirection(1.0))
                          ]),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Tuesday, 14 May',
                                style: Styles.headLine4
                                    .copyWith(fontWeight: FontWeight.w600),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Los Angeles',
                                style: Styles.headLine9
                                    .copyWith(fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(height: 10),
                              const BigNumDegree(),
                              const SizedBox(height: 5),
                              Text(
                                'Sunny Cloudy',
                                style: Styles.headLine8,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 110,
                        top: 30,
                      ),
                      child: Image.asset(
                        'images/Cloud3zap.png',
                        scale: 3,
                      ),
                    )
                  ],
                ),

                //Today Row Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Today',
                      style: Styles.headLine2,
                    ),
                    Row(
                      children: [
                        Text(
                          'Next 14 Days',
                          style: Styles.headLine7
                              .copyWith(color: Styles.textColor1),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 12,
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    WeatherDetails(
                      image: 'images/Suncloudlittlerain.png',
                      text: 'Sunny Rainy',
                    ),
                    WeatherDetails(
                      image: 'images/Zaps.png',
                      text: 'Thunder',
                    ),
                    WeatherDetails(
                      image: 'images/Midsnow.png',
                      text: 'Wind',
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Text(
                  'Temperature',
                  style: Styles.headLine2,
                ),
                const SizedBox(height: 40),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      WeatherTypeContainer(
                        degreeText: '18oC',
                        timeText: '06:00',
                        image: 'images/Suncloudlittlerain.png',
                      ),
                      WeatherTypeContainer(
                        degreeText: '20oC',
                        timeText: '09:00',
                        image: 'images/Cloud3.png',
                      ),
                      WeatherTypeContainer(
                        degreeText: '23oC',
                        timeText: '12:00',
                        image: 'images/BigRainDrops.png',
                      ),
                      WeatherTypeContainer(
                        degreeText: '25oC',
                        timeText: '15:00',
                        image: 'images/Cloud3.png',
                      ),
                    ]),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class WeatherDetails extends StatelessWidget {
  final String text;
  final String image;
  const WeatherDetails({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: 107,
      width: 77,
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(17)),
      child: Column(
        children: [
          Image(
            image: AssetImage(image),
          ),
          Text(
            text,
            style: Styles.headLine11
                .copyWith(fontSize: 10, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}

class BigNumDegree extends StatelessWidget {
  const BigNumDegree({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '27',
          style: Styles.headLine1.copyWith(fontSize: 64),
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
