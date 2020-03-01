import 'package:business_tools/ui/shared/app_colors.dart';
import 'package:business_tools/ui/views/company_search/company_searcher_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

class NavigationWidget extends StatefulWidget {
  NavigationWidget({Key key}) : super(key: key);

  @override
  _NavigationWidgetState createState() => _NavigationWidgetState();
}

class _NavigationWidgetState extends State<NavigationWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void onNavigationTap(int index) {
    if (index == 0)
      setState(() {
        _selectedIndex = index;
      });
  }

  List<BottomNavigationBarItem> navigationItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      title: Text('稅籍資料查詢'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.pan_tool),
      title: Text('尚未開放'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      title: Text('設定'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: primary));
    return Scaffold(
      body: SafeArea(
        child: CompanySearcherView(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: navigationItems,
        currentIndex: _selectedIndex,
        selectedItemColor:  lightPrimary,
        onTap: onNavigationTap,
      ),
    );
  }
}
