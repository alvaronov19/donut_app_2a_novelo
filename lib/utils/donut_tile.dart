import 'package:flutter/material.dart';
 
class DonutTile extends StatelessWidget {
 final String donutFlavor;
 final String donutPrice;
 final dynamic donutColor;  //dynamic porque será de tipo Color y también usará []
 final String imageName;
 
 const DonutTile({
   super.key,
   required this.donutFlavor,
   required this.donutPrice,
   required this.donutColor,
   required this.imageName,
 });
                 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration: BoxDecoration(
            color: donutColor[50],
            borderRadius: BorderRadius.circular(12)),
          child: Column(
            children: [
              //Imagen del donut//PriceTag
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: donutColor[100],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(24),
                          topRight: Radius.circular(24),
                        )),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 18),
                    child: Text(
                      '\$$donutPrice', 
                      style: TextStyle(
                        fontWeight: FontWeight.bold, 
                        fontSize: 18, 
                        color: donutColor[800]),
                      ),
                  )
                ],
              ),
              //Donut Picture
              Padding(
                padding: 
                    const EdgeInsets.symmetric(horizontal: 34, vertical: 12),
                child: Image.asset(imageName),
              )
              //Donut flavor text

              //Love icon + add button
          ],
        ),
      ),
    );
  }
}