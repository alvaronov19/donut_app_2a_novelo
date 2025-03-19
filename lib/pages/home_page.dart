import 'package:donut_app_2a_novelo/tabs/burger_tab.dart';
import 'package:donut_app_2a_novelo/tabs/donut_tab.dart';
import 'package:donut_app_2a_novelo/tabs/pancakes_tab.dart';
import 'package:donut_app_2a_novelo/tabs/pizza_tab.dart';
import 'package:donut_app_2a_novelo/tabs/smoothie_tab.dart';
import 'package:donut_app_2a_novelo/utils/my_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [
    //Donut tan
    MyTab(iconPath: 'lib/icons/donut.png'),
    //Burger Tab
    MyTab(iconPath: 'lib/icons/burger.png'),
    //Smoothie Tab
    MyTab(iconPath: 'lib/icons/smoothie.png'),
    //Pancake Tab
    MyTab(iconPath: 'lib/icons/pancakes.png'),
    //Pizza Tab  
    MyTab(iconPath: 'lib/icons/pizza.png'),
  ];

  @override
  Widget build(BuildContext context) {
    //Este wdget sirve para gestionar las pestañas
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            //Icono de la izquierda
            leading: Icon(
              Icons.menu,
              color: Colors.grey[800],
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 24.0),
                child: Icon(Icons.person),
              )
            ],
          ),
          body: Column(
            children: [
              //Texxto "I want to eat"
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 36, vertical: 18),
                child: Row(
                  children: [
                    Text("I want to",
                    style: TextStyle(fontSize: 32),),
                    Text(
                      "Eat", 
                      style: TextStyle( 
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline),
                  )
                ],
              ),
            ),
            //Tab bar (Pestañas)
            TabBar(tabs: myTabs),
            //Tab bar View (Contenido de pestañas)
            Expanded(
              child: TabBarView(children: [
                DonutTab(),
                BurgerTab(),
                SmoothieTab(),
                PancakesTab(),
                PizzaTab(),
              ]),
            ),
            //Carrito
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 28),
                    child: Column(
                      //Alinear a la izquierda
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('2 items |\$ 45.00',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Delivery Charges Included',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink,
                          padding: EdgeInsets.symmetric(
                              horizontal: 24, vertical: 12)),
                      child: Text(
                          'View Cart',
                          style: TextStyle(color: Colors.white),
                        )),
                ],
              ),
            )
          ],
        )),
    );
  }
}