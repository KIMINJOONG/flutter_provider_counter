import 'package:flutter/material.dart';
import 'package:flutter_provider_counter/src/home_screen.dart';
import 'package:flutter_provider_counter/src/provider/count_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MaterialApp(
      home: ChangeNotifierProvider(
        create: (context) {
          return CountProvier();
        },
        child: HomeScreen(),
      ),
    ),
  );
}
