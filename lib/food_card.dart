import 'package:flutter/material.dart';
import 'models/food_item.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({
    super.key,
    required this.food,
  });
  final FoodItem food;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () => _showDetails(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildPoster(),
            _buildInfo(),
          ],
        ),
      ),
    );
  }

  void _showDetails(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(food.description),
        duration: const Duration(seconds: 3),
      ),
    );
  }

  Widget _buildPoster() {
    return Image.asset(
      food.imagePath,
      height: 220, // Уменьшил высоту, чтобы карточки выглядели гармоничнее
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }

  Widget _buildInfo() {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitleRow(),
          const SizedBox(height: 4),
          _buildCategory(),
          const SizedBox(height: 6),
          _buildBZHU(),
          const SizedBox(height: 6),
          _buildRating(),
          const SizedBox(height: 8),
          _buildDescription(),
        ],
      ),
    );
  }

  Widget _buildTitleRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            food.title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(
          '${food.calories} ккал',
          style: const TextStyle(
            fontSize: 14,
            color: Colors.deepPurple,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  Widget _buildCategory() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.deepPurple.shade50,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        food.category,
        style: TextStyle(
          color: Colors.deepPurple.shade700,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildBZHU() {
    return Text(
      food.bzhu,
      style: const TextStyle(
        fontSize: 12,
        color: Colors.black54,
        fontStyle: FontStyle.italic,
      ),
    );
  }

  Widget _buildRating() {
    return Row(
      children: [
        const Icon(Icons.star, color: Colors.amber, size: 18),
        const SizedBox(width: 4),
        Text(
          '${food.rating.toStringAsFixed(1)} / 10',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        const SizedBox(width: 4),
        const Text(
          '(рейтинг полезности)',
          style: TextStyle(fontSize: 11, color: Colors.grey),
        ),
      ],
    );
  }

  Widget _buildDescription() {
    return Text(
      food.description,
      style: const TextStyle(
        fontSize: 13,
        color: Colors.black87,
        height: 1.3,
      ),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}