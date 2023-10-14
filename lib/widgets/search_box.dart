import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBox extends StatelessWidget {
  final ValueChanged<String>? onChanged;

  SearchBox({this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xfff6f6f6),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(
            16.0, 0.0, 24.0, 0.0), // Left, Top, Right, Bottom
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search doctors, medicines etc',
                  hintStyle: GoogleFonts.lato(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color(0xFFCACCCF),
                  ),
                  border: InputBorder.none,
                ),
                onChanged: onChanged,
              ),
            ),
            Image.asset(
              'assets/images/png/Search.png',
              width: 24.0,
              height: 24.0,
            ),
          ],
        ),
      ),
    );
  }
}
