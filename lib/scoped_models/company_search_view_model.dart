import 'package:business_tools/enums/view_state.dart';
import 'package:business_tools/model/company.dart';
import 'package:business_tools/scoped_models/base_model.dart';
import 'package:business_tools/service/company_service.dart';
import 'package:business_tools/service_locator.dart';
import 'package:flutter/material.dart';

class CompanySearchViewModel extends BaseModel {
  final CompanyService _companyService = locator<CompanyService>();
  Company companyData;

  FocusNode companyIdFieldNode = FocusNode();
  TextEditingController controller = TextEditingController();

  init() {
    companyIdFieldNode.addListener(() => onTextFieldFocus());
  }

  fetchData(String companyID) async {
    if (companyID == null) companyID = controller.text;
    if (companyID.isNotEmpty && state != ViewState.Busy) {
      setState(ViewState.Busy);
      var resultData = await _companyService.getCompanyData(companyID);
      if (resultData.code == 200) {
        companyData = Company.fromJson(resultData.data);
        setState(ViewState.Success);
      } else {
        companyData = null;
        setState(ViewState.Error);
      }
      print(companyData?.businessNm ?? 'None');
    } else 
        setState(ViewState.Idle);
  }

  onTextFieldFocus() {
    if (companyIdFieldNode.hasFocus) controller.clear();
  }

  onSubmitted({String value}) {
    fetchData(value);
    companyIdFieldNode.unfocus();
  }
}
