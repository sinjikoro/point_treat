import 'package:point_treat_model/data_model/treat.dart';

String getTest() {
  final Treat t = Treat(
    id: 1,
    name: 'Test',
    description: 'Test Success',
  );
  return t.description;
}
