import 'package:flutter/material.dart';

import '../doctors_model/top_doctors_data.dart';

class TopDoctorDetails extends StatelessWidget {
  const TopDoctorDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Doctor;
    return Scaffold(
      body: Column(
        children: [
          Hero(
            tag: 'assets/images/png/${args.topDoctorPicture}',
            child: Container(
              alignment: Alignment.topCenter,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                  color: Color(0xFFEAEAEA),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          'assets/images/png/${args.topDoctorPicture}'))),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(top: 26),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 24,
                            width: 24,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/png/Icons-Back 1.png'),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 24,
                            width: 24,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/png/Icons-Artboard 31 1.png'),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(24),
            height: MediaQuery.of(context).size.height * 0.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 24,
                ),
                Hero(
                  tag: args.topDoctorName,
                  child: Material(
                    color: Colors.transparent,
                    child: Text(
                      args.topDoctorName,
                      style: const TextStyle(
                        color: Color(0xFF25282B),
                        fontSize: 24,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                        height: 0.06,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  '${args.topDoctorSpecialty} • ${args.topDoctorHospital}',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: const TextStyle(
                    color: Color(0xFFAAAAAA),
                    fontSize: 14,
                    fontFamily: 'Source Sans Pro',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  args.topDoctorDescription,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 6,
                  style: const TextStyle(
                    color: Color(0xFFAAAAAA),
                    fontSize: 14,
                    fontFamily: 'Source Sans Pro',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                // const Spacer(),
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          const Text(
                            'Experience',
                            style: TextStyle(
                              color: Color(0xFF25282B),
                              fontSize: 16,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w400,
                              height: 0.3,
                              letterSpacing: 0.08,
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: args.topDoctorYearOfExperience,
                                  style: TextStyle(
                                    color: Color(0xFF2B92E4),
                                    fontSize: 24,
                                    fontFamily: 'Source Sans Pro',
                                    fontWeight: FontWeight.w400,
                                    height: 0.06,
                                  ),
                                ),
                                TextSpan(
                                  text: " yr",
                                  style: TextStyle(
                                    color: Color(0xFFAAAAAA),
                                    fontSize: 14,
                                    fontFamily: 'Source Sans Pro',
                                    fontWeight: FontWeight.w400,
                                    height: 0.18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const VerticalDivider(
                        thickness: 1,
                        color: Color(0xFFCACCCF),
                      ),
                      Column(
                        children: [
                          const Text(
                            'Patient',
                            style: TextStyle(
                              color: Color(0xFF25282B),
                              fontSize: 16,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w400,
                              height: 0.3,
                              letterSpacing: 0.08,
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: args.topDoctorNumberOfPatient,
                                  style: TextStyle(
                                    color: Color(0xFF2B92E4),
                                    fontSize: 24,
                                    fontFamily: 'Source Sans Pro',
                                    fontWeight: FontWeight.w400,
                                    height: 0.06,
                                  ),
                                ),
                                TextSpan(
                                  text: " ps",
                                  style: TextStyle(
                                    color: Color(0xFFAAAAAA),
                                    fontSize: 14,
                                    fontFamily: 'Source Sans Pro',
                                    fontWeight: FontWeight.w400,
                                    height: 0.18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const VerticalDivider(
                        thickness: 1,
                        color: Color(0xFFCACCCF),
                      ),
                      Column(
                        children: [
                          const Text(
                            'Rating',
                            style: TextStyle(
                              color: Color(0xFF25282B),
                              fontSize: 16,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w400,
                              height: 0.3,
                              letterSpacing: 0.08,
                            ),
                          ),
                          const SizedBox(
                            height: 34,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                args.topDoctorRating,
                                style: const TextStyle(
                                  color: Color(0xFF2B92E4),
                                  fontSize: 24,
                                  fontFamily: 'Source Sans Pro',
                                  fontWeight: FontWeight.w400,
                                  height: 0.06,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 56,
                      width: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xFF4485FD),
                        image: const DecorationImage(
                          image: AssetImage(
                            'assets/images/png/Icons-Comment2.png',
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 56,
                        child: Center(
                          child: Text(
                            "Make an Appointment",
                            style: TextStyle(
                              color: Color(0xFFF9F9FA),
                              fontSize: 14,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w700,
                              height: 0.11,
                              letterSpacing: 0.17,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0XFF00CC6A),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
//49:53