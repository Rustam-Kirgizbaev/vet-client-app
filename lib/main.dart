import 'package:flutter/material.dart';
import 'package:vet_clinic_project/onboarding/splash.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vet Clinic',
      //theme: theme(),
      home: Splash(),
    );
  }
}
