import 'package:thrive_mobile_app/app/values/app_types.dart';
import 'package:thrive_mobile_app/features/address/state/address_state.dart';
import 'package:thrive_mobile_app/app/model/common/common_response.dart';
import 'package:thrive_mobile_app/shared/network/api_client_provider.dart';
import 'package:thrive_mobile_app/features/address/repository/address_repository.dart';
import 'package:thrive_mobile_app/features/address/model/address_reponse/address_response.dart';
import 'package:thrive_mobile_app/features/address/model/address_create_update_request/address_create_update_request.dart';
import 'package:thrive_mobile_app/shared/network/api_response/api_response.dart';

class AddressRepositoryImpl implements AddressRepository {
  final ApiClient _apiClient;

  const AddressRepositoryImpl(this._apiClient);

  @override
  Future<AddressState> createUpdateAddress(
    AddressCreateUpdateRequest request,
  ) async {
    late final APIResponse<dynamic> response;
    request = request.copyWith(
      addressType: AddressType.USER_ADDRESS.name,
    );

    if (request.addressId != null && request.addressId! > 0) {
      response = await _apiClient.putRequest("/address/update", request);
    } else {
      response = await _apiClient.postRequest("/address/create", request);
    }

    return response.when(success: (success) {
      return AddressState.data(AddressResponse.fromJson(success));
    }, error: (error) {
      return AddressState.error(error);
    });
  }

  @override
  Future<CommonResponse> deleteAddress(int id) async {
    final response = await _apiClient.deleteRequest("/address/delete/id/$id");

    return response.when(success: (success) {
      return CommonResponse.fromJson(success);
    }, error: (error) {
      return CommonResponse(
        success: false,
        message: error,
      );
    });
  }
}
