import 'package:flutter/material.dart';
import 'package:skeleton_text/skeleton_text.dart';

class Temp extends StatelessWidget {
  final bool isLoading;
  final String? temp;
  const Temp({
    Key? key,
    required this.isLoading,
    required this.temp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: (isLoading == true)
              ? SkeletonAnimation(
                  shimmerColor: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  shimmerDuration: 2500,
                  curve: Curves.ease,
                  child: Container(
                    height: 57.0,
                    width: 230.0,
                  ),
                )
              : Container(
                  height: 57.0,
                  width: 230.0,
                  child: Text(
                    '${temp.toString()} °C',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 60.0,
                    ),
                  ),
                ),
        ),
        Container(
          height: 0.3,
          width: 230.0,
          margin: EdgeInsets.only(
            top: 5.0,
          ),
          decoration: BoxDecoration(
            color: Colors.white30,
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ],
    );
  }
}
