import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home.dart';
import 'models/grocery_manager.dart';
import 'app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final theme = AppTheme.light();
    return MaterialApp(
      theme: theme,
      debugShowCheckedModeBanner: false,
      title: 'GroceryLister',
      home: MultiProvider(
        providers: [ChangeNotifierProvider(create: (context) => GroceryManager()),],
        child: const Home(),

      )
    );
  }
}

