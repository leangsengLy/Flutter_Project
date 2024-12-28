import 'package:shopping/models/category.dart';

class GroceryItem {
  const GroceryItem({
    required this.id,
    required this.name,
    required this.quantity,
    required this.category,
  });
  final String id;
  final String name;
  final double quantity;
  final Category category;
}
