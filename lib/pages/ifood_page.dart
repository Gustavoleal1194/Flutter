import 'package:flutter/material.dart';

import 'restaurante_detalhes.dart';

class IfoodPage extends StatefulWidget {
  const IfoodPage({super.key});

  @override
  State<IfoodPage> createState() => _IfoodPageState();
}

class _IfoodPageState extends State<IfoodPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Controle de scroll',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        appBarTheme: AppBarTheme.of(context).copyWith(
          backgroundColor: Colors.white,
          elevation: 0,
          titleTextStyle: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        tabBarTheme: TabBarTheme.of(context).copyWith(
          labelColor: Colors.red,
          unselectedLabelColor: Colors.grey[500],
          labelStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      home: const RestauranteDetalhes(),
    );
  }
}
