import 'package:business_tools/ui/shared/app_colors.dart';
import 'package:flutter/material.dart';

class EmptyResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '輸入統一編號以查詢稅籍資料',
        style: TextStyle(color: disable),
      ),
    );
  }
}
