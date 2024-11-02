import 'package:flutter/cupertino.dart';
import 'package:starbak_mart/Widgets/NavBarWidget.dart';
import 'package:flutter/material.dart';


class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween, 
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NavBarWidget()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(15),
                shape: CircleBorder(),
                backgroundColor: Colors.white,
                shadowColor: Colors.grey.withOpacity(0.5),
              ),
              child: Icon(Icons.chevron_left, size: 24, color: Colors.red),
            ),

            Text(
              'Cart',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => AddPage()),
                // );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(15),
                shape: CircleBorder(),
                backgroundColor: Colors.white,
                shadowColor: Colors.grey.withOpacity(0.5),
              ),
              child: Icon(
                CupertinoIcons.person,
                color: Colors.black,
                size: 24,
              ),
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor:
            Colors.transparent, 
        elevation: 0, 
      ),


      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 40, left: 20, right: 20),
          child: Column(
            children: [
              SizedBox(height: 5),
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        margin: EdgeInsets.only(left: 8),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(
                          "assets/burger.jpeg",
                          height: 100,
                          width: 100,
                        ),
                      ),
                      SizedBox(width: 15),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Burger King Medium",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(CupertinoIcons.trash,
                                      size: 24, color: Colors.red),
                                ],
                              ),
                              Text(
                                "Rp.50.000,00",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(CupertinoIcons.minus_circle_fill,
                                          size: 24,
                                          color: const Color.fromARGB(217, 227, 111, 10),),
                                      SizedBox(width: 5),
                                      Text(
                                        "1",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Icon(CupertinoIcons.plus_circle_fill,
                                          size: 24,
                                          color:  const Color.fromARGB(217, 227, 111, 10)),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 10),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        margin: EdgeInsets.only(left: 8),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(
                          "assets/botol.jpeg",
                          height: 70,
                          width: 70,
                        ),
                      ),
                      SizedBox(width: 15),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Teh Botol",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(CupertinoIcons.trash,
                                      size: 24, color: Colors.red),
                                ],
                              ),

                              Text(
                                "Rp.5.000,00",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        CupertinoIcons.minus_circle_fill,
                                        size: 24,
                                        color: const Color.fromARGB(217, 227, 111, 10),
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        "1",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Icon(CupertinoIcons.plus_circle_fill,
                                          size: 24,
                                          color: const Color.fromARGB(217, 227, 111, 10)),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 10), 

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        margin: EdgeInsets.only(left: 8),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(
                          "assets/burger.jpeg",
                          height: 70,
                          width: 70,
                        ),
                      ),
                      SizedBox(width: 15),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Burger King Small",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(CupertinoIcons.trash,
                                      size: 24, color: Colors.red),
                                ],
                              ),
                              Text(
                                "Rp.35.000,00",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        CupertinoIcons.minus_circle_fill,
                                        size: 24,
                                        color: const Color.fromARGB(217, 227, 111, 10),
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        "1",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Icon(CupertinoIcons.plus_circle_fill,
                                          size: 24,
                                          color: const Color.fromARGB(217, 227, 111, 10)),
                                    ],
                                  ),
                                ],
                              ),

                              
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Ringkasan  Belanja",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "PPN 11%",
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          ),
                          Text(
                            "Rp.10.000,00",
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total Belanja",
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          ),
                          Text(
                            "Rp.94.000,00",
                            style: TextStyle(color: Colors.grey, fontSize: 18),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Divider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total Pembayaran",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Rp.104.000,00",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width / 2 * 2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(217, 227, 111, 10),
                        ),
                        child: Center(
                          child: Text(
                            "Checkout",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
