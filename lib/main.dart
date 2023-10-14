import 'package:flutter/material.dart';
import 'pages/doctor_details.dart';
import 'pages/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //return ChangeNotifierProvider
    //create: (context) => MyAppState(),
    return MaterialApp(
      title: 'Find Your Doctor App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/doctor_details': (context) => const TopDoctorDetails(),
      },
    );
  }
}
