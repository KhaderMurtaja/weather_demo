import 'package:flutter/material.dart';
import 'package:skeleton_text/skeleton_text.dart';

class CityCountry extends StatelessWidget {
  final bool isLoading;
  final String? city;
  final String? country;

  const CityCountry({
    Key? key,
    required this.isLoading,
    required this.city,
    required this.country,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (isLoading == true)
        ? SkeletonAnimation(
            shimmerColor: Colors.white,
            borderRadius: BorderRadius.circular(10),
            shimmerDuration: 2500,
            curve: Curves.ease,
            child: Container(
              height: 35.0,
              width: 200.0,
              margin: EdgeInsets.only(
                top: 20.0,
              ),
            ),
          )
        : Container(
            height: 35.0,
            width: 200.0,
            margin: EdgeInsets.only(
              top: 20.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${city.toString()}, ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
                Text(
                  country.toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                  ),
                ),
              ],
            ),
          );
  }
}
