import 'package:count_bmi_provider/height_provider.dart';
import 'package:count_bmi_provider/home_page.dart';
import 'package:count_bmi_provider/weight_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<WeightProvider>(
          create: (context) => WeightProvider(),
        ),
        ChangeNotifierProvider<HeightProvider>(
          create: (context) => HeightProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
