class FoodItem {
  const FoodItem({
    required this.title,
    required this.description,
    required this.category,
    required this.calories,
    required this.bzhu,
    required this.rating,
    required this.imagePath,
  });

  final String title;
  final String description;
  final String category;
  final int calories;
  final String bzhu;
  final double rating;
  final String imagePath;
}