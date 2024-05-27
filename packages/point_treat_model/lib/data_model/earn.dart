/// Earn data model
class Earn {
  /// constructor
  Earn({
    required this.id,
    required this.childId,
    required this.taskId,
    required this.taskMame,
    required this.earnPoints,
    required this.earnedAt,
  });

  /// earn id
  final int id;

  /// child id
  final int childId;

  /// task id
  final int taskId;

  /// points earned task name
  final String taskMame;

  /// earned points
  final int earnPoints;

  /// earned DateTime
  final DateTime earnedAt;
}
