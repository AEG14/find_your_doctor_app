import 'package:flutter/material.dart';

class Category {
  final Color color;
  final String imageUrl1;
  final String imageUrl2;
  final String text;

  Category({
    required this.color,
    required this.imageUrl1,
    required this.imageUrl2,
    required this.text,
  });
}

List<Category> categories = [
  Category(
    color: Color(0xFF4485FD),
    imageUrl1: 'assets/images/png/blue.png',
    imageUrl2: 'assets/images/png/007-stethoscope.png',
    text: 'Consultation',
  ),
  Category(
    color: Color(0xFF00CC6A),
    imageUrl1: 'assets/images/png/green.png',
    imageUrl2: 'assets/images/png/012-medicine.png',
    text: 'Medicines',
  ),
  Category(
    color: Color(0xFFA584FF),
    imageUrl1: 'assets/images/png/purple.png',
    imageUrl2: 'assets/images/png/004-teeth.png',
    text: 'Dental',
  ),
  Category(
    color: Color(0xFF00C9E4),
    imageUrl1: 'assets/images/png/skyblue.png',
    imageUrl2: 'assets/images/png/013-care-2.png',
    text: 'Physician',
  ),
  Category(
    color: Color(0xFFFF7854),
    imageUrl1: 'assets/images/png/orange.png',
    imageUrl2: 'assets/images/png/017-heart.png',
    text: 'Heart',
  ),
  Category(
    color: Color(0xFFFD44B3),
    imageUrl1: 'assets/images/png/pink.png',
    imageUrl2: 'assets/images/png/028-bandage.png',
    text: 'Skin',
  ),
  Category(
    color: Color(0xFFFEA725),
    imageUrl1: 'assets/images/png/yellow.png',
    imageUrl2: 'assets/images/png/024-clinic.png',
    text: 'Hospitals',
  ),
  Category(
    color: Color(0xFFFD4444),
    imageUrl1: 'assets/images/png/red.png',
    imageUrl2: 'assets/images/png/005-syringe.png',
    text: 'Surgeon',
  ),
];
