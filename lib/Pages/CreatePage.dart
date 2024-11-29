import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:starbak_mart/Pages/AddPage.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final supabase = Supabase.instance.client;

class Createpage extends StatefulWidget {
  const Createpage({super.key});

  @override
  State<Createpage> createState() => _CreatepageState();
}

class _CreatepageState extends State<Createpage> {
  String _katagori = 'Makanan';
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  File? _imageFile;

 Future pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        _imageFile = File(image.path);
      });
    }
  }

  Future<String?> uploadImage(String path) async {
    if (_imageFile == null) return null;

    final fileName = DateTime.now().millisecondsSinceEpoch;
    final uploadPath = 'uploads/$fileName';

    final response = await supabase.storage
        .from('food')
        .upload(uploadPath, _imageFile!);

    return supabase.storage.from('food').getPublicUrl(uploadPath);
  }

    Future<List<dynamic>> fetchData() async {
    final response = await supabase.from('food').select('*');
    return response as List<dynamic>;
  }


  @override
  Widget build(BuildContext context) {
    final mediaWidth = MediaQuery.of(context).size.width;
    final mediaHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Tambah Produk'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.chevron_left, color: Colors.red),
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => Addpage()),
            );
          },
        ),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.person, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(mediaWidth * 0.05),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Nama Produk',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(mediaWidth * 0.05),
                ),
              ),
            ),
            SizedBox(height: mediaHeight * 0.02),
            TextField(
              controller: _priceController,
              decoration: InputDecoration(
                labelText: 'Harga',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(mediaWidth * 0.05),
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: mediaHeight * 0.02),
            DropdownButtonFormField<String>(
              value: _katagori,
              items: ['Makanan', 'Minuman']
                  .map((category) => DropdownMenuItem(
                        value: category,
                        child: Text(category),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  _katagori = value!;
                });
              },
              decoration: InputDecoration(
                labelText: 'Katagori Produk',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(mediaWidth * 0.05),
                ),
              ),
            ),
            SizedBox(height: mediaHeight * 0.02),
            GestureDetector(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: mediaWidth * 0.03,
                  vertical: mediaHeight * 0.015,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(mediaWidth * 0.05),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _imageFile != null
                        ? Flexible(
                            child: Image.file(
                              _imageFile!,
                              width: mediaWidth * 0.3,
                              height: mediaHeight * 0.15,
                              fit: BoxFit.cover,
                            ),
                          )
                        : const Text("No image selected"),
                    ElevatedButton(
                      onPressed: pickImage,
                      child: const Text("Pick Image"),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: mediaHeight * 0.02),
            SizedBox(
              width: double.infinity,
              height: mediaHeight * 0.07,
              child: ElevatedButton(
                onPressed: () async {
                  final name = _nameController.text;
                  final price = _priceController.text;

                    var imageUrl = await uploadImage('uploads');
                  if (imageUrl == null) return;


                  await supabase.from('food').insert({
                    'name': name,
                    'price': price,
                    'image_url': imageUrl,

                  });
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => Addpage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(mediaWidth * 0.05),
                  ),
                  backgroundColor: const Color.fromARGB(217, 227, 111, 10),
                  foregroundColor: Colors.white,
                ),
                child: Text('Submit',
                    style: TextStyle(fontSize: mediaWidth * 0.04)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
