import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DailyNews extends StatelessWidget {
  DailyNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
    );
  }

  _buildAppBar() {
    return AppBar(
      title: const Text('Daily News',
        style: TextStyle(color: Colors.black,
            fontWeight: FontWeight.bold),),
    );
  }

}