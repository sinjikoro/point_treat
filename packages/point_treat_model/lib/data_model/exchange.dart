/// Exchange data model
class Exchange {
  /// constructor
  Exchange({
    required this.id,
    required this.childId,
    required this.ticketId,
    required this.treatName,
    required this.exchangePoints,
    required this.exchangedAt,
  });

  /// exchange id
  final int id;

  /// child id
  final int childId;

  /// ticket id
  final int ticketId;

  /// treat name
  final String treatName;

  /// exchanged points
  final int exchangePoints;

  /// exchanged DateTime
  final DateTime exchangedAt;
}
