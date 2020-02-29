import 'package:business_tools/scoped_models/company_search_view_model.dart';
import 'package:business_tools/service/company_service.dart';
import 'package:get_it/get_it.dart';

GetIt locator = new GetIt();

void setupLocator() {
  // Register services
  locator.registerLazySingleton<CompanyService>(() => CompanyService());
  // Register ScopedModels
  locator.registerFactory<CompanySearchViewModel>(() => CompanySearchViewModel());
}