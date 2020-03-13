import 'package:flutter/material.dart';

class ErrorResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(height: MediaQuery.of(context).size.height - 200,
      child: Center(
        child: Text('查無資料'),
      ),
    );
  }
}
