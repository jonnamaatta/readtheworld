import 'package:flutter/material.dart';
import 'package:get/get.dart'; 
import 'screens/welcome_screen.dart'; 
import 'screens/welcome_start_screen.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp( 
      title: 'Read the World',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/welcome', //TODO: change to /home if the user has gone through welcome already
      getPages: [ 
        GetPage(name: '/welcome', page: () => const WelcomeScreen()),
        GetPage(name: '/welcome/start', page: () => const WelcomeStartScreen()),

        // ADD HOME GetPage(name: '/home', page: () => const HomeScreen()),
      ],
    );
  }
}
