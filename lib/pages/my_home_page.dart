import 'package:flutter/material.dart';
import '../widgets/list_of_top_doctors.dart';
import '../widgets/mini_profile_card.dart';
import '../widgets/search_box.dart';
import '../widgets/category_card.dart';
import '../doctors_model/grid_menu_data.dart';
// import 'package:google_fonts/google_fonts';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 56,
                ),
                Container(
                  height: 36,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 24,
                        width: 24,
                        child: Image.asset(
                          'assets/images/png/Icons-Menu-Burger.png',
                          alignment: Alignment.center,
                          fit: BoxFit.cover,
                        ),
                      ),
                      MiniProfileCard(
                        color: Colors.blue,
                        imageUrl: 'assets/images/png/harls.jpg',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Find ",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 34,
                            color: Color(0xFF25282B),
                          ),
                        ),
                        TextSpan(
                          text: "your doctor",
                          style: TextStyle(
                            fontSize: 34,
                            color: Color(0xFFA0A4A8),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                SearchBox(
                  onChanged: (value) {
                    // some functionalities
                  },
                ),
                SizedBox(height: 24),
                Container(
                  height: 170,
                  child: GridView.builder(
                    scrollDirection: Axis.horizontal,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                    ),
                    itemCount: categories.length,
                    itemBuilder: (BuildContext context, int index) {
                      return CategoryCard(
                        color: categories[index].color,
                        imageUrl1: categories[index].imageUrl1,
                        imageUrl2: categories[index].imageUrl2,
                        text: categories[index].text,
                      );
                    },
                  ),
                ),
                // Fixed container at the bottom
                const SizedBox(
                  height: 24,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Top Doctors',
                      style: TextStyle(
                        color: Color(0xFF25282B),
                        fontSize: 18,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                        height: 0,
                        letterSpacing: 0.04,
                      ),
                    ),
                    Text(
                      'View all',
                      style: TextStyle(
                        color: Color(0xFF4485FD),
                        fontSize: 11,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                        height: 0,
                        letterSpacing: 0.03,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24,),
                const ListOfTopDoctors(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
