import 'package:flutter/material.dart';

class MiniProfileCard extends StatelessWidget {
  final Color color;
  final String?
      imageUrl; // Make imageUrl nullable so it's optional to have a profile

  const MiniProfileCard({
    Key? key,
    required this.color,
    this.imageUrl, // Make imageUrl nullable so it's optional to have a profile
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36.0,
      height: 36.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      child: ClipOval(
        child: imageUrl != null
            ? Image.asset(
                imageUrl!,
                width: 36.0,
                height: 36.0,
                fit: BoxFit.cover,
              )
            : Icon(
                Icons.person,
                size: 36.0,
                color: Colors.white, // You can customize the icon color
              ),
      ),
    );
  }
}
