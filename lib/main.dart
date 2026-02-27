import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tecsis/insumos/mvvm/insumos_view_model.dart';
import 'package:tecsis/mainpage/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => InsumosViewModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
        home: const MainPage(),
      ),
    );
  }
}
