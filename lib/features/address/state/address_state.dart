import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thrive_mobile_app/features/address/model/address_reponse/address_response.dart';

part 'address_state.freezed.dart';

@freezed
class AddressState with _$AddressState {
  const factory AddressState.initial() = _Initial;
  const factory AddressState.loading() = _Loading;
  const factory AddressState.error(String error) = _Error;
  const factory AddressState.data(AddressResponse addressResponse) = _Data;
}
