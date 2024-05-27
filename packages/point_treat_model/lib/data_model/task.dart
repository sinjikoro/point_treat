/// Task data model
class Task {
  /// constructor
  Task({
    required this.id,
    required this.childId,
    required this.name,
    required this.condition,
    required this.earnPoints,
    this.description = '',
  });

  /// task id
  final int id;

  /// child id
  final int childId;

  /// task name
  final String name;

  /// task description
  final String description;

  /// task's check condition
  final String condition;

  /// points earned
  final int earnPoints;
}
