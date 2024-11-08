import 'package:flutter/material.dart';
import '../controller/AttendanceController.dart';

class CheckInWidget extends StatelessWidget {
  final AttendanceController attendanceController = AttendanceController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6, offset: Offset(0, 2))],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Check In', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('08:00 AM', style: TextStyle(fontSize: 16)),
              ElevatedButton(
                onPressed: () {
                  attendanceController.checkIn(context);
                },
                child: Text('CHECK IN'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
