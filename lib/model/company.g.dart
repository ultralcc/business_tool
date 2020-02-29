// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Company _$CompanyFromJson(Map<String, dynamic> json) {
  return Company(
    companyId: json['companyId'] as String,
    businessAddress: json['businessAddress'] as String,
    businessNm: json['businessNm'] as String,
    capitalAmount: json['capitalAmount'] as int,
    businessSetupDate: json['businessSetupDate'] as String,
    businessType: json['businessType'] as String,
    industryNm: json['industryNm'] as String,
  );
}

Map<String, dynamic> _$CompanyToJson(Company instance) => <String, dynamic>{
      'companyId': instance.companyId,
      'businessAddress': instance.businessAddress,
      'businessNm': instance.businessNm,
      'capitalAmount': instance.capitalAmount,
      'businessSetupDate': instance.businessSetupDate,
      'businessType': instance.businessType,
      'industryNm': instance.industryNm,
    };
