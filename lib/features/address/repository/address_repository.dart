import 'package:thrive_mobile_app/app/model/common/common_response.dart';
import 'package:thrive_mobile_app/features/address/state/address_state.dart';
import 'package:thrive_mobile_app/features/address/model/address_create_update_request/address_create_update_request.dart';

abstract class AddressRepository {
  Future<CommonResponse> deleteAddress(int id);

  Future<AddressState> createUpdateAddress(
    AddressCreateUpdateRequest request,
  );
}
