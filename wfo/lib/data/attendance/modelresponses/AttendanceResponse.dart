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

  // Factory method to create an AttendanceResponse object from JSON
  factory AttendanceResponse.fromJson(Map<String, dynamic> json) {
    return AttendanceResponse(
      userId: json['userId'],
      checkInTime: DateTime.parse(json['checkInTime']),
      checkOutTime: DateTime.parse(json['checkOutTime']),
      presencePercentage: json['presencePercentage'].toDouble(),
      teamworkPercentage: json['teamworkPercentage'].toDouble(),
      location: json['location'],
    );
  }

  // Method to convert AttendanceResponse object to JSON
  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'checkInTime': checkInTime.toIso8601String(),
      'checkOutTime': checkOutTime.toIso8601String(),
      'presencePercentage': presencePercentage,
      'teamworkPercentage': teamworkPercentage,
      'location': location,
    };
  }
}
