import 'package:business_tools/enums/view_state.dart';
import 'package:business_tools/scoped_models/company_search_view_model.dart';
import 'package:business_tools/ui/shared/app_colors.dart';
import 'package:business_tools/ui/views/base_view.dart';
import 'package:business_tools/ui/views/company_search/empty_result.dart';
import 'package:business_tools/ui/views/company_search/error_result.dart';
import 'package:business_tools/ui/views/company_search/search_result.dart';
import 'package:business_tools/ui/views/widgets/circular_loading.dart';
import 'package:flutter/material.dart';

class CompanySearcherView extends StatefulWidget {
  @override
  _CompanySearcherViewState createState() => _CompanySearcherViewState();
}

class _CompanySearcherViewState extends State<CompanySearcherView> {
  Widget _bodyContent(CompanySearchViewModel model) {
    switch (model.state) {
      case ViewState.Busy:
        return CircularLoading();
        break;
      case ViewState.Idle:
        return EmptyResult();
        break;
      case ViewState.Success:
        return SearchResult(model.companyData);
        break;
      case ViewState.Error:
        return ErrorResult();
        break;
      default:
        return EmptyResult();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BaseView<CompanySearchViewModel>(
      onModelReady: (model) => model.init(),
      builder: (context, child, model) => SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
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
                                contentPadding:
                                    EdgeInsets.only(left: 20, top: 20),
                                border: InputBorder.none,
                                hintText: '輸入統一編號',
                                hintStyle: TextStyle(fontSize: 20)),
                            textInputAction: TextInputAction.search,
                            keyboardType: TextInputType.number,
                            showCursor: false,
                            onFieldSubmitted: (value) =>
                                model.onSubmitted(value: value),
                          ),
                        ),
                        FlatButton(
                          child: Text(
                            '查詢',
                            style: TextStyle(
                              fontSize: 20,
                              color: lightPrimary,
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
            _bodyContent(model)
          ],
        ),
      ),
    );
  }
}
