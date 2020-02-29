import 'package:business_tools/config.dart';
import 'package:business_tools/utils/http_helper.dart';

class CompanyService {
  Future<ResponseResultData> getCompanyData(String companyID) async {
    final url = Config.companyApiUrl + companyID;

    ResponseResultData response = await HttpHelper.doGet(url, false);
    return response;
  }
}
    