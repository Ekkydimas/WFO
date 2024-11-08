// Temporary definition of AttendanceResponse
class AttendanceResponse {
  final String userId;
  final DateTime checkInTime;
  final DateTime checkOutTime;
  final double presencePercentage;
  final double teamworkPercentage;
  final String location;

  AttendanceResponse({
    required this.userId,
    required this.checkInTime,
    required this.checkOutTime,
    required this.presencePercentage,
    required this.teamworkPercentage,
    required this.location,
  });
}

class DummyAttendance {
  static final List<AttendanceResponse> dummyData = [
    AttendanceResponse(
      userId: "user1",
      checkInTime: DateTime.now().subtract(Duration(hours: 8)),
      checkOutTime: DateTime.now(),
      presencePercentage: 80.0,
      teamworkPercentage: 85.0,
      location: "Office HQ",
    ),
    AttendanceResponse(
      userId: "user2",
      checkInTime: DateTime.now().subtract(Duration(hours: 7)),
      checkOutTime: DateTime.now(),
      presencePercentage: 75.0,
      teamworkPercentage: 78.0,
      location: "Remote",
    ),
    AttendanceResponse(
      userId: "user3",
      checkInTime: DateTime.now().subtract(Duration(hours: 9)),
      checkOutTime: DateTime.now(),
      presencePercentage: 90.0,
      teamworkPercentage: 92.0,
      location: "Branch Office",
    ),
  ];
}
