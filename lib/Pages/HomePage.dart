import 'package:flutter/material.dart';
import 'package:starbak_mart/Widgets/AllFoodWidget.dart';
import 'package:starbak_mart/Widgets/AppBarWidget.dart';
import 'package:starbak_mart/Widgets/CategoriesWidget.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Appbarwidget(),
          SizedBox(height: 30),
          Categorieswidget(),
          SizedBox(height: 30),
          
          Padding(
            padding: EdgeInsets.only(top: 20, right: 300),
            child: Text(
              "All food",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),

          SizedBox(height: 10),

          Expanded(
            child: SingleChildScrollView(
              child: Allfoodwidget(),
            ),
          ),

        ],
      ),
    );
  }
}
