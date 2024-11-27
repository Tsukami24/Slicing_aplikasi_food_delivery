import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:starbak_mart/Widgets/NavBarWidget.dart';
import 'package:starbak_mart/Pages/CreatePage.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final supabase = Supabase.instance.client;

class Addpage extends StatefulWidget {
  const Addpage({super.key});

  @override
  State<Addpage> createState() => _AddpageState();
}

class _AddpageState extends State<Addpage> {
  Future<List<dynamic>> fetcData() async {
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
            ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //   // context,
                //   // MaterialPageRoute(builder: (context) => AddPage()),
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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 20, left: 10, right: 5),
          child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CreatePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    backgroundColor: const Color.fromARGB(217, 227, 111, 10),
                    foregroundColor: Colors.white,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Add Data",
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(width: 5),
                      Icon(Icons.add, size: 20),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                Row(
                  children: [
                    Text(
                      "Foto",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 70),
                    Text(
                      "Nama Produk",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 70),
                    Text(
                      "Harga",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 70),
                    Text(
                      "Aksi",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 5),
            Divider(
              color: Colors.grey,
              thickness: 1,
            ),
            SizedBox(height: 0),
            FutureBuilder<List<dynamic>>(
              future: fetcData(),
              builder: (BuildContext context,
                  AsyncSnapshot<List<dynamic>> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('eror: ${snapshot.error}');
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return const Text('No data found');
                } else {
                  final List<dynamic> data = snapshot.data!;
            return Column(
              children: data.map((item) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        "assets/burger.jpeg",
                        height: 60,
                        width: 60,
                      ),
                    ),
                    SizedBox(width: 24),
                    Text(
                      item['name'] ?? 'Tidak ada nama',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 36),
                    Text(
                      "Rp. ${item['price'] ?? '0'}",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 46),
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
                        );
                      }).toList(),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
