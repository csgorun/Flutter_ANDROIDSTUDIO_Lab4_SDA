import 'package:anime_catalog/food_card.dart';
import 'package:anime_catalog/models/food_data.dart';
import 'package:flutter/material.dart';

class FoodList extends StatelessWidget {
  const FoodList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(12),
      itemCount: foodList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: FoodCard(
            food: foodList[index],
          ),
        );
      },
    );
  }
}