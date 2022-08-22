import 'package:flutter/material.dart';
import 'package:flutter_provider_counter/src/provider/count_provider.dart';
import 'package:flutter_provider_counter/src/ui/count_widget.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  late CountProvier _countProvier;

  @override
  Widget build(BuildContext context) {
    _countProvier = Provider.of<CountProvier>(context);
    return Scaffold(
      body: CountWidget(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              _countProvier.add();
            },
            icon: Icon(Icons.add),
          ),
          IconButton(
            onPressed: () {
              _countProvier.minus();
            },
            icon: Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
