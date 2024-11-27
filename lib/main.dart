import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:starbak_mart/Widgets/NavBarWidget.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

const supabaseUrl = 'https://tvixzyxmbxfnkfsnaprl.supabase.co';
const supabaseKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InR2aXh6eXhtYnhmbmtmc25hcHJsIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzA5NjUyNDcsImV4cCI6MjA0NjU0MTI0N30.mxjXx12Zdw23-QlSrxzN_bfedl8yG9_sLYX-y9sglJ0';

Future<void> main() async {
  await Supabase.initialize(url: supabaseUrl, anonKey: supabaseKey);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Starbak Mart",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF5F5F3),
      ),
      routes: {
        "/": (context) => NavBarWidget(),
      },
    );
  }
}
