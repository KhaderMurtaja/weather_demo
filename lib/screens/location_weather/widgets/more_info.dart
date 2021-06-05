import 'package:flutter/material.dart';
import 'package:skeleton_text/skeleton_text.dart';

class MoreInfo extends StatelessWidget {
  final bool isLoading;
  final String? windSpeed;
  final String? humidity;
  final String? pressure;

  const MoreInfo({
    Key? key,
    required this.isLoading,
    required this.windSpeed,
    required this.humidity,
    required this.pressure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 15.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Wind
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.menu_open_outlined,
                  color: Colors.blue[200],
                ),
                SizedBox(
                  width: 5.0,
                ),
                (isLoading == true)
                    ? SkeletonAnimation(
                        shimmerColor: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        shimmerDuration: 2500,
                        curve: Curves.ease,
                        child: Container(
                          height: 15.0,
                          width: 70.0,
                          margin: EdgeInsets.only(
                            top: 20.0,
                          ),
                        ),
                      )
                    : Container(
                        height: 15.0,
                        width: 70.0,
                        child: Text(
                          '${windSpeed.toString()}km/h',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Color(0xFFC0C0C0),
                          ),
                        ),
                      ),
              ],
            ),
          ),
          // humidity
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.water_damage_outlined,
                  color: Colors.blue[200],
                ),
                SizedBox(
                  width: 5.0,
                ),
                (isLoading == true)
                    ? SkeletonAnimation(
                        shimmerColor: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        shimmerDuration: 2500,
                        curve: Curves.ease,
                        child: Container(
                          height: 15.0,
                          width: 30.0,
                          margin: EdgeInsets.only(
                            top: 20.0,
                          ),
                        ),
                      )
                    : Container(
                        height: 15.0,
                        width: 30.0,
                        child: Text(
                          '${humidity.toString()}%',
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Color(0xFFC0C0C0),
                          ),
                        ),
                      ),
              ],
            ),
          ),
          // pressure
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.terrain,
                  color: Colors.blue[200],
                ),
                SizedBox(
                  width: 5.0,
                ),
                (isLoading == true)
                    ? SkeletonAnimation(
                        shimmerColor: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        shimmerDuration: 2500,
                        curve: Curves.ease,
                        child: Container(
                          height: 15.0,
                          width: 40.0,
                          margin: EdgeInsets.only(
                            top: 20.0,
                          ),
                        ),
                      )
                    : Container(
                        height: 15,
                        width: 40,
                        child: Text(
                          pressure.toString(),
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Color(0xFFC0C0C0),
                          ),
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
