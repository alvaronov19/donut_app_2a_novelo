import 'package:donut_app_2a_novelo/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class BurgerTab extends StatelessWidget {
  //Lista de Donas
  final List donutsOnSale = [
    // [ donutFlavor, donutStore, donutPrice, donutColor, imageName ]
    ["Ice Cream", "Krispy Kreme", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "Dunkin Donuts", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "Krispy Kreme", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "Dunkin Donuts", "95", Colors.brown, "lib/images/chocolate_donut.png"],
    ["Ice Cream", "Krispy Kreme", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "Dunkin Donuts", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "Krispy Kreme", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "Dunkin Donuts", "95", Colors.brown, "lib/images/chocolate_donut.png"],

  ];
  BurgerTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      //Cuantos elementos tiene la cuadricula
      itemCount: donutsOnSale.length,
      padding: const EdgeInsets.all(12),
      //Encargado de organizar la cuadricula
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //Determinar numero de columnas
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.6),
      itemBuilder: (context, index) {
        //Elemento individual de la cuadricula
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutStore: donutsOnSale[index][1],
          donutPrice: donutsOnSale[index][2],
          donutColor: donutsOnSale[index][3],
          imageName: donutsOnSale[index][4],
        );
        
      }
    );
  }
}