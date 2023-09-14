import 'package:flutter/material.dart';
import 'package:mobilecv/contants/colors/app_colors.dart';
import 'package:mobilecv/screens/edit_screen.dart';
import 'package:mobilecv/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Mobile CV',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            color: AppColors.backgroundColorGrey,
          ),
          colorScheme: ColorScheme.fromSeed(
              seedColor: AppColors.backgroundColorGrey,
              primary: AppColors.appColorBlack,
              secondary: AppColors.backgroundColorGrey),
          useMaterial3: true,
        ),
        initialRoute: '/',
        routes: {
          CvHomeScreen.homeScreen: (context) => const CvHomeScreen(),
          EditScreen.editScreen: (context) => const EditScreen(),
        });
  }
}
