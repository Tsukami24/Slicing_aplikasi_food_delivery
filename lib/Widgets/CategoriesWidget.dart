import 'package:flutter/material.dart';

class Categorieswidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      scrollDirection:
          Axis.horizontal, 
      child: Wrap(
        spacing: screenWidth * 0.09, 
        runSpacing:10, 
        alignment: WrapAlignment.center, 
        children: [
          
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  )
                ]),
            child: Image.asset(
              "assets/burger.jpeg",
              width: screenWidth * 0.17,
              height: screenWidth * 0.17,
            ),
          ),
          
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  )
                ]),
            child: Image.asset(
              "assets/burger.jpeg",
              width: screenWidth * 0.17,
              height: screenWidth * 0.17,
            ),
          ),
          
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  )
                ]),
            child: Image.asset(
              "assets/botol.jpeg",
              width: screenWidth * 0.17,
              height: screenWidth * 0.17,
            ),
          ),
        ],
      ),
    );
  }
}
