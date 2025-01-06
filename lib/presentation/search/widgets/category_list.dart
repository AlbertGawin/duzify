import 'package:duzify/presentation/search/widgets/category_button.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, index) {
        final titles = [
          'Utwory',
          'Wykonawcy',
          'Albumy',
          'Playlisty',
          'Podcasty'
        ];
        return Padding(
          padding: EdgeInsets.only(
            left: index == 0 ? 12.0 : 4.0,
            right: index == titles.length - 1 ? 12.0 : 4.0,
            top: 8.0,
            bottom: 8.0,
          ),
          child: CategoryButton(title: titles[index]),
        );
      },
    );
  }
}
