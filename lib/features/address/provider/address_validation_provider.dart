import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/features/address/model/address/address.dart';
import 'package:thrive_mobile_app/features/address/model/address_create_update_request/address_create_update_request.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';

final addressRequestProvider = StateNotifierProvider<
    _AddressRequestRequestNotifier, AddressCreateUpdateRequest>((ref) {
  return _AddressRequestRequestNotifier();
});

class _AddressRequestRequestNotifier
    extends StateNotifier<AddressCreateUpdateRequest> {
  _AddressRequestRequestNotifier() : super(const AddressCreateUpdateRequest());

  void setCity(String? value) {
    state = state.copyWith(city: value);
  }

  void setState(String? value) {
    state = state.copyWith(state: value);
  }

  void setStreet(String? value) {
    state = state.copyWith(street: value);
  }

  void setZipCode(String? value) {
    state = state.copyWith(zipCode: value);
  }

  void setAddress(Address? address) {
    if (address != null && mounted) {
      state = state.copyWith(
        addressId: address.id,
        city: address.city,
        state: address.state,
        street: address.street,
        zipCode: address.zipCode,
        addressType: address.addressType,
      );
    } else {
      state = AddressCreateUpdateRequest();
    }
  }

  Address? getAddress() {
    if (state.addressId != null && state.addressId! > 0) {
      return Address(
        id: state.addressId ?? 0,
        city: state.city,
        state: state.state,
        street: state.street,
        zipCode: state.zipCode,
        addressType: state.addressType,
      );
    }

    return null;
  }

  bool isInvalid() {
    return state.city.isBlank ||
        state.state.isBlank ||
        state.street.isBlank ||
        state.zipCode.isBlank;
  }
}
