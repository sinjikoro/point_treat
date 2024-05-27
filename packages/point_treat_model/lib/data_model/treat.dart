/// Treat data model
class Treat {
  /// constructor
  Treat({
    required this.id,
    required this.name,
    this.description = '',
  });

  /// treat id
  final int id;

  /// treat name
  final String name;

  /// treat description
  final String description;
}
