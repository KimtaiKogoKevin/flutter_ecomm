import 'package:flutter/material.dart';
import 'category_card.dart';

class ShopCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CategoryCard(
              Icon(
                Icons.animation_rounded,
                size: 40,
              ),
              'Zero fly '),
          CategoryCard(
              Icon(
                Icons.animation_sharp,
                size: 40,
              ),
              'Ferterlizers'),
          CategoryCard(
              Icon(
                Icons.animation_outlined,
                size: 40,
              ),
              'Livestock'),
               CategoryCard(
              Icon(
                Icons.animation_rounded,
                size: 40,
              ),
              'Poultry'),
              CategoryCard(
              Icon(
                Icons.animation_rounded,
                size: 40,
              ),
              'Fish')
        ],
      ),
    );
  }
}
