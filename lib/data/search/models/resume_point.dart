import 'package:duzify/domain/search/entities/resume_point.dart';

class ResumePointModel extends ResumePointEntity {
  const ResumePointModel({
    required super.fullyPlayed,
    required super.resumePositionMs,
  });

  factory ResumePointModel.fromJson(Map<String, dynamic> json) {
    return ResumePointModel(
      fullyPlayed: json['fully_played'],
      resumePositionMs: json['resume_position_ms'],
    );
  }
}
