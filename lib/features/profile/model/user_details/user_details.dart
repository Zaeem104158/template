import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thrive_mobile_app/features/address/model/address/address.dart';

part 'user_details.freezed.dart';
part 'user_details.g.dart';

@freezed
class UserDetails with _$UserDetails {
  const factory UserDetails({
    required final int id,
    required final int userId,
    final Address? address,
    @Default("") final String phone,
    @Default("") final String website,
    @Default("") final String businessEmail,
  }) = _UserDetails;

  factory UserDetails.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsFromJson(json);
}
