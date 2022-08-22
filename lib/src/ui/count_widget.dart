import 'package:flutter/material.dart';
import 'package:flutter_provider_counter/src/provider/count_provider.dart';
import 'package:provider/provider.dart';

class CountWidget extends StatelessWidget {
  const CountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          Provider.of<CountProvier>(context).count.toString(),
          style: TextStyle(
            fontSize: 50.0,
          ),
        ),
      ),
    );
  }
}
