import 'package:flutter/material.dart';

class Allfoodwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.center, 
        children: <Widget>[
          Wrap(
            alignment: WrapAlignment.center,
            spacing: 25.0, 
            runSpacing: 20.0, 
            children: [

              Container(
                width: screenWidth * 0.4,
                height: screenWidth * 0.53,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(0, 2),
                      )
                    ]),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          "assets/burger.jpeg",
                          fit: BoxFit.cover,
                          width: screenWidth * 0.35,
                        ),
                        height: screenWidth * 0.32,
                      ),
                      Text(
                        "Burger King Medium",
                        style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: screenWidth * 0.001),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Rp. 50.000,00",
                            style: TextStyle(
                              fontSize: screenWidth * 0.04,
                              color: const Color.fromARGB(217, 227, 111, 10),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.add_circle,
                            color: const Color.fromARGB(217, 227, 111, 10),
                            size: screenWidth * 0.06,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
