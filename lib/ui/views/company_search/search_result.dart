import 'package:business_tools/model/company.dart';
import 'package:business_tools/ui/shared/app_colors.dart';
import 'package:flutter/material.dart';

class SearchResult extends StatelessWidget {
  final Company company;

  const SearchResult(this.company, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              ' ' + company.businessNm,
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 10),
            Text(
              '  統一編號: ${company.companyId}',
              style: TextStyle(color: disable),
            ),
            SizedBox(height: 10),
            _infoCard('營業（稅籍）登記地址', company.businessAddress),
            _infoCard('資本額', company.capitalAmount.toString()),
            _infoCard('組織種類', company.businessType),
            _infoCard('登記營業項目', company.industryNm),
          ],
        ),
      ),
    );
  }

  _infoCard(String title, String info) => Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              color: extraLight,
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                info,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      );
}
