import 'package:flutter/cupertino.dart';
import 'package:starbak_mart/Widgets/NavBarWidget.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final supabase = Supabase.instance.client;

class Cartpage extends StatefulWidget {
  const Cartpage({super.key});

  @override
  State<Cartpage> createState() => _CartpageState();
}

class _CartpageState extends State<Cartpage> {
  Future<List<dynamic>> fetchData() async {
    final List<Map<String, dynamic>> response =
        await supabase.from('food').select('*');
    return response as List<dynamic>;
  }

  Future<void> deleteData(int id) async {
    await supabase.from('food').delete().eq('id', id);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 40, left: 20, right: 20),
          child: Column(
            children: [
              SizedBox(height: 5),
              FutureBuilder<List<dynamic>>(
                future: fetchData(), // Corrected function name
                builder: (BuildContext context,
                    AsyncSnapshot<List<dynamic>> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                    return const Text('No data found');
                  } else {
                    final List<dynamic> data = snapshot.data!;
                    return Column(
                      children: data.map<Widget>((item) {
                        return Column(
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              item['name'] ?? 'Tidak ada nama',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Spacer(),
                                            IconButton(
                                              icon: Icon(CupertinoIcons.trash,
                                                  size: 24, color: Colors.red),
                                              onPressed: () async {
                                                final id = item['id'];
                                                await deleteData(id);
                                              },
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "Rp. ${item['price'] ?? '0'}",
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
                                                  CupertinoIcons
                                                      .minus_circle_fill,
                                                  size: 24,
                                                  color: const Color.fromARGB(
                                                      217, 227, 111, 10),
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
                                                Icon(
                                                    CupertinoIcons
                                                        .plus_circle_fill,
                                                    size: 24,
                                                    color: const Color.fromARGB(
                                                        217, 227, 111, 10)),
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
                          ],
                        );
                      }).toList(), // Correctly returning the mapped list
                    );
                  }
                },
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
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
