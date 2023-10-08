import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryCard extends StatelessWidget {
  final Color color;
  final String imageUrl1;
  final String imageUrl2;
  final String text;

  const CategoryCard({
    Key? key,
    required this.color,
    required this.imageUrl1,
    required this.imageUrl2,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75.0,
      height: 81.0,
      child: Column(
        children: [
          Container(
            width: 56.0,
            height: 56.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: color,
            ),
            child: Stack(
              children: [
                Image.asset(
                  imageUrl1,
                  width: 56.0,
                  height: 56.0,
                  fit: BoxFit.cover,
                ),
                Center(
                  child: Image.asset(
                    imageUrl2,
                    width: 24.0,
                    height: 24.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 4),
          Text(
            text,
            style: GoogleFonts.lato(
              fontSize: 12,
              color: Colors.black,
              letterSpacing: 0.001,
            ),
          ),
        ],
      ),
    );
  }
}
