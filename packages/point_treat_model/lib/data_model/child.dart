/// child data model
class Child {
  /// constructor
  Child({
    required this.id,
    required this.name,
    this.balancePoints = 0,
  });

  /// child id
  final int id;

  /// child name
  final String name;

  /// keeping balance points
  final int balancePoints;
}
