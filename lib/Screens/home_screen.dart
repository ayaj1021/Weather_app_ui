import 'package:flutter/material.dart';
import 'package:weather_app_ui/App_styles/app_styles.dart';
import 'package:weather_app_ui/Widgets/potential_weather_details.dart';
import 'package:weather_app_ui/Widgets/top_icons_container.dart';
import 'package:weather_app_ui/Widgets/weather_type_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                  children: const [
                    TopIconsContainer(
                      iconData: Icons.arrow_back,
                    ),
                    TopIconsContainer(
                      iconData: Icons.notifications_outlined,
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                //Search container
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.grey.shade300,
                  ),
                  child: Row(
                    children: [
                      const Flexible(
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              border: InputBorder.none,
                              hintText: 'Search location...'),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        width: 50,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(8)),
                        child: const Image(
                          image: AssetImage('images/Settingsbutton.png'),
                          fit: BoxFit.contain,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  'Next week',
                  style: Styles.headLine2.copyWith(color: Colors.grey.shade600),
                ),
                const SizedBox(height: 30),

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
                const SizedBox(height: 30),
                //Potential Weather Container
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  height: 360,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(34)),
                  child: Column(
                    children: [
                      Text(
                        'Potential Weather',
                        style: Styles.headLine2.copyWith(color: Colors.white),
                      ),
                      const SizedBox(height: 10),
                      const PotentialWeatherDetails(
                        dateText: '15 May 2022',
                        dayText: 'Monday',
                        image: 'images/Suncloudmidrain.png',
                      ),
                      const Divider(
                        height: 10,
                        color: Colors.white,
                        thickness: 2,
                      ),
                      const PotentialWeatherDetails(
                        dateText: '16 May 2022',
                        dayText: 'Tuesday',
                        image: 'images/Cloud3.png',
                      ),
                      const Divider(
                        height: 10,
                        color: Colors.white,
                        thickness: 2,
                      ),
                      const PotentialWeatherDetails(
                        dateText: '17 May 2022',
                        dayText: 'Wednesday',
                        image: 'images/BigRainDrops.png',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
