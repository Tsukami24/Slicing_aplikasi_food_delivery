import 'package:flutter/material.dart';

class Allfoodwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: <Widget>[
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: Container(
                  width: 170,
                  height: 225,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        )
                      ]),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Image.asset("assets/burger.jpeg"),
                          height: 130,
                        ),
                        Text(
                          "Burger King Medium",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Rp. 50.000,00",
                              style: TextStyle(
                                fontSize: 17,
                                color: const Color.fromARGB(217, 227, 111, 10),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.add_circle,
                              color: const Color.fromARGB(217, 227, 111, 10),
                              size: 21,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: Container(
                  width: 170,
                  height: 225,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        )
                      ]),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Image.asset("assets/burger.jpeg"),
                          height: 130,
                        ),
                        Text(
                          "Burger King Medium",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Rp. 50.000,00",
                              style: TextStyle(
                                fontSize: 17,
                                color: const Color.fromARGB(217, 227, 111, 10),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.add_circle,
                              color: const Color.fromARGB(217, 227, 111, 10),
                              size: 21,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: Container(
                  width: 170,
                  height: 225,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        )
                      ]),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Image.asset("assets/burger.jpeg"),
                          height: 130,
                        ),
                        Text(
                          "Burger King Medium",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Rp. 50.000,00",
                              style: TextStyle(
                                fontSize: 17,
                                color: const Color.fromARGB(217, 227, 111, 10),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.add_circle,
                              color: const Color.fromARGB(217, 227, 111, 10),
                              size: 21,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: Container(
                  width: 170,
                  height: 225,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        )
                      ]),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Image.asset("assets/burger.jpeg"),
                          height: 130,
                        ),
                        Text(
                          "Burger King Medium",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Rp. 50.000,00",
                              style: TextStyle(
                                fontSize: 17,
                                color: const Color.fromARGB(217, 227, 111, 10),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.add_circle,
                              color: const Color.fromARGB(217, 227, 111, 10),
                              size: 21,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: Container(
                  width: 170,
                  height: 225,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        )
                      ]),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Image.asset("assets/burger.jpeg"),
                          height: 130,
                        ),
                        Text(
                          "Burger King Medium",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Rp. 50.000,00",
                              style: TextStyle(
                                fontSize: 17,
                                color: const Color.fromARGB(217, 227, 111, 10),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.add_circle,
                              color: const Color.fromARGB(217, 227, 111, 10),
                              size: 21,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: Container(
                  width: 170,
                  height: 225,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        )
                      ]),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Image.asset("assets/burger.jpeg"),
                          height: 130,
                        ),
                        Text(
                          "Burger King Medium",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Rp. 50.000,00",
                              style: TextStyle(
                                fontSize: 17,
                                color: const Color.fromARGB(217, 227, 111, 10),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.add_circle,
                              color: const Color.fromARGB(217, 227, 111, 10),
                              size: 21,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: Container(
                  width: 170,
                  height: 225,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        )
                      ]),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Image.asset("assets/burger.jpeg"),
                          height: 130,
                        ),
                        Text(
                          "Burger King Medium",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Rp. 50.000,00",
                              style: TextStyle(
                                fontSize: 17,
                                color: const Color.fromARGB(217, 227, 111, 10),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.add_circle,
                              color: const Color.fromARGB(217, 227, 111, 10),
                              size: 21,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: Container(
                  width: 170,
                  height: 225,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        )
                      ]),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Image.asset("assets/burger.jpeg"),
                          height: 130,
                        ),
                        Text(
                          "Burger King Medium",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Rp. 50.000,00",
                              style: TextStyle(
                                fontSize: 17,
                                color: const Color.fromARGB(217, 227, 111, 10),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.add_circle,
                              color: const Color.fromARGB(217, 227, 111, 10),
                              size: 21,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: Container(
                  width: 170,
                  height: 225,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        )
                      ]),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Image.asset("assets/burger.jpeg"),
                          height: 130,
                        ),
                        Text(
                          "Burger King Medium",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Rp. 50.000,00",
                              style: TextStyle(
                                fontSize: 17,
                                color: const Color.fromARGB(217, 227, 111, 10),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.add_circle,
                              color: const Color.fromARGB(217, 227, 111, 10),
                              size: 21,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: Container(
                  width: 170,
                  height: 225,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        )
                      ]),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Image.asset("assets/burger.jpeg"),
                          height: 130,
                        ),
                        Text(
                          "Burger King Medium",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Rp. 50.000,00",
                              style: TextStyle(
                                fontSize: 17,
                                color: const Color.fromARGB(217, 227, 111, 10),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.add_circle,
                              color: const Color.fromARGB(217, 227, 111, 10),
                              size: 21,
                            )
                          ],
                        )
                      ],
                    ),
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
