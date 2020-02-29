import 'package:json_annotation/json_annotation.dart';

part 'company.g.dart';

@JsonSerializable(nullable: true)
class Company{
  String companyId;
  String businessAddress;
  String businessNm;
  int capitalAmount;
  String businessSetupDate;
  String businessType;
  String industryNm;

  Company({this.companyId, this.businessAddress, this.businessNm, this.capitalAmount,
      this.businessSetupDate, this.businessType, this.industryNm});

  factory Company.fromJson(Map<String, dynamic> json) => _$CompanyFromJson(json);
  Map<String, dynamic> toJson() => _$CompanyToJson(this);
}