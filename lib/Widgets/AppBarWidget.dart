import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Appbarwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: screenHeight * 0.02, 
        horizontal: screenWidth * 0.04, 
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(
                  screenWidth * 0.02), 
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                    screenWidth * 0.05), 
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius:
                        screenWidth * 0.005, 
                    blurRadius: screenWidth * 0.03, 
                    offset: Offset(0, screenHeight * 0.005), 
                  ),
                ],
              ),
              child: Icon(
                CupertinoIcons.bars,
                size: screenWidth * 0.06, 
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(screenWidth * 0.02),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(screenWidth * 0.05),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: screenWidth * 0.005,
                    blurRadius: screenWidth * 0.03,
                    offset: Offset(0, screenHeight * 0.005),
                  ),
                ],
              ),
              child: Icon(
                CupertinoIcons.person,
                size: screenWidth * 0.06,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
