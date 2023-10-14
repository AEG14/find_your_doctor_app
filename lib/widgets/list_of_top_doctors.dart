import 'package:flutter/material.dart';

import '../doctors_model/top_doctors_data.dart';
import 'top_doctors_card.dart';

class ListOfTopDoctors extends StatelessWidget {
  const ListOfTopDoctors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: topDoctors.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {},
          child: TopDoctorsCard(
            doctor: topDoctors[index],
          ),
        );
      },
    );
  }
}
