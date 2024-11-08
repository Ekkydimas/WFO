import 'package:flutter/material.dart';

class AttendanceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildUserInfo(),
            const SizedBox(height: 16),
            _buildPerformanceSection(),
            const SizedBox(height: 16),
            _buildOptionsRow(),
            const SizedBox(height: 16),
            _buildAttendanceSection(),
          ],
        ),
      ),
    );
  }


  // User Information Section
  Widget _buildUserInfo() {
  return Row(
    children: [
      CircleAvatar(
        backgroundImage: AssetImage('assets/images/profile.jpg'), // Local image path
        radius: 30,
      ),
      const SizedBox(width: 16),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Hendy Juliandarta',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            'Team Lead IT Support',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    ],
  );
}



  // Performance Section
  Widget _buildPerformanceSection() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          const Text(
            'Performance',
            style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildCircularIndicator("Presence", 0.8),
              _buildCircularIndicator("Team Work", 0.8),
              Column(
                children: const [
                  Text(
                    "29 August",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    "Monday",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCircularIndicator(String label, double percentage) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: 60,
              height: 60,
              child: CircularProgressIndicator(
                value: percentage,
                strokeWidth: 8.0,
                color: Colors.white,
                backgroundColor: Colors.white30,
              ),
            ),
            Text(
              "${(percentage * 100).toInt()}%",
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(color: Colors.white, fontSize: 14)),
      ],
    );
  }

  Widget _buildOptionsRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildOptionIcon(Icons.attach_money, "Reimburse"),
        _buildOptionIcon(Icons.access_time, "Overtime"),
        _buildOptionIcon(Icons.calendar_today, "Holiday"),
        _buildOptionIcon(Icons.assignment, "Permission"),
      ],
    );
  }

  Widget _buildOptionIcon(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue, size: 30),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(fontSize: 12, color: Colors.grey)),
      ],
    );
  }

  Widget _buildAttendanceSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Live Attendance",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
            labelText: 'Location',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {},
          child: const Text("Check In"),
          style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromHeight(40),
            backgroundColor: Colors.blue, // Corrected from primary to backgroundColor
          ),
        ),
      ],
    );
  }
}
