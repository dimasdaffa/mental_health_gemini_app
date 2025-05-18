import 'package:flutter/material.dart';
import 'package:mental_health_app/features/meditation/presentation/pages/meditation_screen.dart';
import 'package:mental_health_app/presentation/onboarding/onboarding.dart';
import 'package:mental_health_app/core/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: const MeditationScreen(),
    );
  }
}
