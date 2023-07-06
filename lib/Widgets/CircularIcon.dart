import 'package:e_commerce_app/utils/Dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircularIcon extends StatelessWidget {
  final IconData icon;

  CircularIcon({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimensions.height40,
      height: Dimensions.height40,
      child: Icon(
        icon,
        size: Dimensions.width20,
        color: Color(0xFF756d54),
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFfcf4e4),
      ),
    );
  }
}
