import 'package:business_tools/ui/shared/app_colors.dart';
import 'package:flutter/material.dart';

class CircularLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: CircularProgressIndicator(
          valueColor: new AlwaysStoppedAnimation<Color>(lightPrimary),
        ),
      ),
    );
  }
}
