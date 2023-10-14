import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../doctors_model/top_doctors_data.dart';

class TopDoctorsCard extends StatelessWidget {
  const TopDoctorsCard({Key? key, this.doctor}) : super(key: key);

  final Doctor? doctor;

  @override
  Widget build(BuildContext context) {
    if (doctor == null) {
      return Container(
        height: 80,
        width: MediaQuery.of(context).size.width - 32,
        alignment: Alignment.center,
        child: Text('No Doctor Data Available'),
      );
    }
    return Padding(
      padding: EdgeInsets.only(bottom: 16),
      child: Container(
        color: Colors.transparent,
        height: 80,
        width: MediaQuery.of(context).size.width - 32,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Hero(
              tag: 'assets/images/png/${doctor!.topDoctorPicture}',
              child: Container(
                width: 88,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/png/${doctor!.topDoctorPicture}',
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Hero(
                    tag: doctor!.topDoctorName,
                    child: Material(
                      color: Colors.transparent,
                      child: Text(
                        doctor!.topDoctorName,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                          color: Color(0xFF404345),
                          fontSize: 16,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w700,
                          height: 2.0,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    '${doctor!.topDoctorSpecialty} • ${doctor!.topDoctorHospital}',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      color: Color(0xFFAAAAAA),
                      fontSize: 14,
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          RatingBar.builder(
                            itemSize: 16,
                            initialRating:
                                double.parse(doctor!.topDoctorRating),
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemPadding: EdgeInsets.zero,
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            onRatingUpdate: (rating) {
                              debugPrint(rating.toString());
                            },
                            unratedColor: Colors.grey,
                          ),
                          const SizedBox(
                            width: 10, // Add spacing of 10 pixels
                          ),
                          Text(
                            '(${doctor!.topDoctorNumberOfPatient})',
                            style: const TextStyle(
                              color: Color(0xFFAAAAAA),
                              fontSize: 14,
                              fontFamily: 'Source Sans Pro',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 24,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 13,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: doctor!.isDoctorOpen
                              ? Color(0xFFCCF5E1)
                              : Color(0xFFF7E4D9),
                        ),
                        child: Text(
                          doctor!.isDoctorOpen ? 'Open' : 'Close',
                          style: TextStyle(
                            color: doctor!.isDoctorOpen
                                ? Color(0xFF00CC6A)
                                : Color(0xFFCC4900),
                            fontSize: 12,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
