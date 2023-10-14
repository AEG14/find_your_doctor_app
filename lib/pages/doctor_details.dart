import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorDetailsScreen extends StatelessWidget {
  const DoctorDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: [
          Container(
            height: 375,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/png/doc1.png'),
                  fit: BoxFit.cover,
                ),
                color: Color(0XFFEAEAEA),
              ),
            ),

            //more sa diri nga container
          ),
          SizedBox(height: 24),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 24.0, left: 24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "dr. Gilang Segara Bening",
                          style: GoogleFonts.lato(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color(0XFF25282B)),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(right: 24.0, left: 24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Heart",
                          style: GoogleFonts.lato(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Color(0XFFAAAAAA)),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Container(
                          height: 4,
                          width: 4,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/png/smallGreyDot.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Persahabatan Hospital",
                          style: GoogleFonts.lato(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Color(0XFFAAAAAA)),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.only(right: 24.0, left: 24.0),
                    child: Text(
                      "dr. Gilang is one of the best doctors in the Persahabatan Hospital. He has saved more than 1000 patients in the past 3 years. He has also received many awards from domestic and abroad as the best doctors. He is available on a private or schedule. ",
                      style: GoogleFonts.lato(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Color(0XFFAAAAAA)),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.only(left: 39.0, right: 39),
                    child: Container(
                      height: 72,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 90,
                            child: Column(
                              children: [
                                Text(
                                  "Experience",
                                  style: GoogleFonts.lato(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0XFF25282B)),
                                ),
                                SizedBox(height: 8),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "3 ",
                                        style: GoogleFonts.lato(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 24,
                                          color: Color(0xFF2B92E4),
                                        ),
                                      ),
                                      TextSpan(
                                        text: "yr",
                                        style: GoogleFonts.lato(
                                          fontSize: 14,
                                          color: Color(0xFFAAAAAA),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          VerticalDivider(
                            color: Color(0xFFCACCCF),
                            width: 1,
                            indent: 6,
                            endIndent: 15,
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          Container(
                            width: 90,
                            child: Column(
                              children: [
                                Text(
                                  "Patient",
                                  style: GoogleFonts.lato(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0XFF25282B)),
                                ),
                                SizedBox(height: 8),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "1221 ",
                                        style: GoogleFonts.lato(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 24,
                                          color: Color(0xFF2B92E4),
                                        ),
                                      ),
                                      TextSpan(
                                        text: "ps",
                                        style: GoogleFonts.lato(
                                          fontSize: 14,
                                          color: Color(0xFFAAAAAA),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          VerticalDivider(
                            color: Color(0xFFCACCCF),
                            width: 1,
                            indent: 6,
                            endIndent: 15,
                          ),
                          Container(
                            width: 90,
                            child: Column(
                              children: [
                                Text(
                                  "Rating",
                                  style: GoogleFonts.lato(
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0XFF25282B)),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "5.0",
                                  style: GoogleFonts.lato(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 24,
                                    color: Color(0xFF2B92E4),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 20, 24, 24),
                    child: Row(children: [
                      Container(
                        height: 56,
                        width: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            image:
                                AssetImage('assets/images/png/Btn_Message.png'),
                            fit: BoxFit.cover,
                          ),
                          color: Color(0XFF4485FD),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 56,
                          child: Center(
                              child: Text("Make an Appointment",
                                  style: GoogleFonts.lato(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0XFFFFFFFF)))),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0XFF00CC6A),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
