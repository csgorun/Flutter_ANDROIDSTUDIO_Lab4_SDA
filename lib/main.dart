// import 'package:anime_catalog/anime_list.dart';
// import 'package:anime_catalog/models/anime_data.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(
//           seedColor: Colors.deepPurple,
//         ),
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(
//             'Аниме-каталог',
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           backgroundColor: Colors.deepPurple,
//           foregroundColor: Colors.white,
//           actions: [
//             Padding(
//               padding: const EdgeInsets.symmetric(
//                 horizontal: 16.0,
//               ),
//               child: Center(
//                 child: Text(
//                   'Всего: ${animeList.length}',
//                   style: const TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//         body: AnimeList(),
//       ),
//     ),
//   );
// }


import 'package:anime_catalog/food_list.dart';
import 'package:anime_catalog/models/food_data.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green, // Заменил на зелёный (ассоциация с ПП/эко)
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Топ-10 продуктов ПП',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              child: Center(
                child: Text(
                  'Всего: ${foodList.length}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        body: const FoodList(),
      ),
    ),
  );
}
