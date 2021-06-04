import 'package:flutter/material.dart';

class YourLocationText extends StatelessWidget {
  const YourLocationText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.location_on,
            color: Color(0xFF869DA4),
          ),
          Text(
            'Your Location Now',
            style: TextStyle(
              color: Color(0xFF869DA4),
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
