import 'package:flutter/material.dart';
import 'package:sixammartwallet/screens/home_view.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home:Wallet_Home(),
    );
  }
}


