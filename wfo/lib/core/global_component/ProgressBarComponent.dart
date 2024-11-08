import 'package:flutter/material.dart';

class ProgressBarComponent extends StatelessWidget {
  final double percentage;
  final String label;

  ProgressBarComponent({required this.percentage, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: 60,
              height: 60,
              child: CircularProgressIndicator(
                value: percentage / 100,
                strokeWidth: 8.0,
                color: Colors.blue,
                backgroundColor: Colors.grey[200],
              ),
            ),
            Text(
              "${percentage.toInt()}%",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(height: 8),
        Text(label, style: TextStyle(fontSize: 16)),
      ],
    );
  }
}
