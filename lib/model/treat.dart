import 'package:json/json.dart';

/// Model class for Treat
@JsonCodable()
class Treat {
  /// Constructor
  const Treat({
    required this.id,
    required this.name,
    required this.description,
  });

  /// treat id
  final int id;

  /// treat name
  final String name;

  /// treat description
  final String description;
}
