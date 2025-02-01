import 'package:flutter/material.dart';
import 'crud/create_profile.dart';
import 'shared/themes/colors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyConctedApp());
}

class MyConctedApp extends StatelessWidget {
  const MyConctedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        bottomNavigationBarTheme:
            BottomNavigationBarThemeData(backgroundColor: navy),
        appBarTheme: AppBarTheme(
          backgroundColor: navy,
        ),
        brightness: Brightness.dark,
        scaffoldBackgroundColor: navy,
      ),
      debugShowCheckedModeBanner: false,
      home: const CreateProfile(),
    );
  }
}
