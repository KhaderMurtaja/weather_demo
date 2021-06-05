import 'package:flutter/material.dart';
import 'package:skeleton_text/skeleton_text.dart';

class MainDesc extends StatelessWidget {
  final bool isLoading;
  final String? main;

  const MainDesc({
    Key? key,
    required this.isLoading,
    required this.main,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.blue[900],
        borderRadius: BorderRadius.circular(100),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          (isLoading == true)
              ? SkeletonAnimation(
                  shimmerColor: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  shimmerDuration: 2500,
                  curve: Curves.ease,
                  child: Container(
                    height: 55,
                    width: 200,
                  ),
                )
              : Container(
                  height: 55,
                  width: 200,
                  child: Text(
                    main.toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
