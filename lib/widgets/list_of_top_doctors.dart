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
          onTap: () {
            Navigator.of(context).pushNamed('/doctor_details', arguments: Doctor(
              topDoctorName: topDoctors[index].topDoctorName,
              topDoctorDescription: topDoctors[index].topDoctorDescription,
              topDoctorHospital: topDoctors[index].topDoctorHospital,
              isDoctorOpen: topDoctors[index].isDoctorOpen,
              topDoctorNumberOfPatient: topDoctors[index].topDoctorNumberOfPatient,
              topDoctorPicture: topDoctors[index].topDoctorPicture,
              topDoctorRating: topDoctors[index].topDoctorRating,
              topDoctorSpecialty: topDoctors[index].topDoctorSpecialty,
              topDoctorYearOfExperience: topDoctors[index].topDoctorYearOfExperience,
            ));
          },
          child: TopDoctorsCard(
            doctor: topDoctors[index],
          ),
        );
      },
    );
  }
}
