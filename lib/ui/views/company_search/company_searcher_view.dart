import 'package:business_tools/scoped_models/company_search_view_model.dart';
import 'package:business_tools/ui/views/base_view.dart';
import 'package:flutter/material.dart';

class CompanySearcherView extends StatefulWidget {
  @override
  _CompanySearcherViewState createState() => _CompanySearcherViewState();
}

class _CompanySearcherViewState extends State<CompanySearcherView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<CompanySearchViewModel>(
      onModelReady: (model) => model.init(),
      builder: (context, child, model) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          child: Container(
            height: 70,
            child: Form(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: TextFormField(
                      controller: model.controller,
                      cursorColor: Colors.orange,
                      style: TextStyle(
                        fontSize: 25,
                      ),
                      focusNode: model.companyIdFieldNode,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 20, top: 16),
                        border: InputBorder.none,
                        hintText: '輸入統一編號',
                      ),
                      textInputAction: TextInputAction.search,
                      keyboardType: TextInputType.number,
                      showCursor: false,
                      onFieldSubmitted: (value) => model.onSubmitted(value: value),
                    ),
                  ),
                  FlatButton(
                    child: Text(
                      '查詢',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff5BB899),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onPressed: () => model.onSubmitted(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
