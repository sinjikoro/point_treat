/// Ticket data model
class Ticket {
  /// constructor
  Ticket({
    required this.id,
    required this.treatId,
    required this.childId,
    required this.exchangePoints,
    this.issuanceCount = -1,
    this.remainingCount = -1,
  });

  /// ticket id
  final int id;

  /// treat id
  final int treatId;

  /// child id
  final int childId;

  /// exchange points
  final int exchangePoints;

  /// ticket issuance count
  final int issuanceCount;

  /// ticket remaining count
  final int remainingCount;
}
