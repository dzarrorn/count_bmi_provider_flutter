import 'dart:math';
import 'package:count_bmi_provider/height_provider.dart';
import 'package:count_bmi_provider/weight_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var weightProvider = Provider.of<WeightProvider>(context);
    var heightProvider = Provider.of<HeightProvider>(context);
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Weight (kg)',
              style: TextStyle(fontSize: 20),
            ),
            //! NOTE : USE CONSUMER
            // Consumer<WeightProvider>(
            //   builder: (context, weightProvider, _) => Slider(
            //     min: 1,
            //     max: 100,
            //     divisions: 100,
            //     value: weightProvider.weight,
            //     label: weightProvider.weight.round().toString(),
            //     activeColor: Colors.blue,
            //     inactiveColor: Colors.blue.withOpacity(0.2),
            //     onChanged: (newValue) {
            //       newValue = newValue.roundToDouble();
            //       print('weight:$newValue');
            //       weightProvider.weight = newValue;
            //     },
            //   ),
            // ),
            Slider(
              min: 1,
              max: 100,
              divisions: 100,
              value: weightProvider.weight,
              label: weightProvider.weight.round().toString(),
              activeColor: Colors.blue,
              inactiveColor: Colors.blue.withOpacity(0.2),
              onChanged: (newValue) {
                newValue = newValue.roundToDouble();
                print('weight:$newValue');
                weightProvider.weight = newValue;
              },
            ),

            SizedBox(
              height: 30,
            ),
            Text(
              'Height (cm)',
              style: TextStyle(fontSize: 20),
            ),
            //! NOTE : USE CONSUMER
            // Consumer<HeightProvider>(
            //   builder: (context, heightProvider, _) => Slider(
            //     min: 1,
            //     max: 200,
            //     divisions: 200,
            //     value: heightProvider.height,
            //     label: heightProvider.height.round().toString(),
            //     activeColor: Colors.pink,
            //     inactiveColor: Colors.pink.withOpacity(0.2),
            //     onChanged: (newValue) {
            //       newValue = newValue.roundToDouble();
            //       print('height:$newValue');
            //       heightProvider.height = newValue;
            //     },
            //   ),
            // ),
            Slider(
              min: 1,
              max: 200,
              divisions: 200,
              value: heightProvider.height,
              label: heightProvider.height.round().toString(),
              activeColor: Colors.pink,
              inactiveColor: Colors.pink.withOpacity(0.2),
              onChanged: (newValue) {
                newValue = newValue.roundToDouble();
                print('height:$newValue');
                heightProvider.height = newValue;
              },
            ),

            SizedBox(
              height: 30,
            ),
            //! NOTE : USE CONSUMER
            // Consumer<WeightProvider>(
            //   builder: (context, weightProvider, _) => Consumer<HeightProvider>(
            //     builder: (context, heightProvider, _) => Text(
            //       'BMI: ${(weightProvider.weight / (pow(heightProvider.height / 100, 2))).toStringAsFixed(2)}',
            //       style: TextStyle(
            //         fontSize: 20,
            //         fontWeight: FontWeight.w500,
            //       ),
            //     ),
            //   ),
            // ),
            Text(
              'BMI: ${(weightProvider.weight / (pow(heightProvider.height / 100, 2))).toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
