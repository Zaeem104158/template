import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thrive_mobile_app/app/model/user/user.dart';

part 'contact.freezed.dart';
part 'contact.g.dart';

@freezed
class Contact with _$Contact {
  const factory Contact({
    final int? id,
    final User? agent,
    final String? status,
    final String? phone,
    final String? lastName,
    final String? firstName,
    final String? contactType,
    @Default(0) double premium,
    @Default(0) int policyCount,
    @Default(0) double opportunityCount,
    @Default(0) double upcomingRenewalCount,
    @Default(0) double creationDateTimeStamp,
  }) = _Contact;

  factory Contact.fromJson(Map<String, dynamic> json) => _$ContactFromJson(json);
}
