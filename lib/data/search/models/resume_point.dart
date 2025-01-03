class ResumePointModel {
  final bool fullyPlayed;
  final int resumePositionMs;

  const ResumePointModel({
    required this.fullyPlayed,
    required this.resumePositionMs,
  });

  factory ResumePointModel.fromJson(Map<String, dynamic> json) {
    return ResumePointModel(
      fullyPlayed: json['fully_played'],
      resumePositionMs: json['resume_position_ms'],
    );
  }
}
