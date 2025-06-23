echo "# Bloodline61-borsa-takip-apk" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/Bloodline61/Bloodline61-borsa-takip-apk.git
git push -u origin main
  import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(BorsaApp());
}

class BorsaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Borsa Takip',
      theme: ThemeData.dark(),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
