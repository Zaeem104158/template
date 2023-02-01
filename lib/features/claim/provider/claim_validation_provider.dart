import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/features/claim/model/claim_create_request/claim_create_request.dart';
import 'package:thrive_mobile_app/features/home/model/product/product.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';

final claimCreateRequestProvider = StateNotifierProvider.autoDispose<
    _ClaimCreateRequestNotifier, ClaimCreateRequest>((ref) {
  return _ClaimCreateRequestNotifier();
});

class _ClaimCreateRequestNotifier extends StateNotifier<ClaimCreateRequest> {
  _ClaimCreateRequestNotifier() : super(const ClaimCreateRequest());

  void setCarrierId(String? value) {
    state = state.copyWith(carrierId: value);
  }

  void setPolicyNumber(String? value) {
    state = state.copyWith(policyNumber: value);
  }

  void setDateOfAccident(String? value) {
    state = state.copyWith(dateOfAccident: value);
  }

  void setIncidentDescription(String? value) {
    state = state.copyWith(incidentDescription: value);
  }

  void setProduct(Product? value) {
    if (value != null) {
      state = state.copyWith(
        productId: value.id.toString(),
        productName: value.name,
      );
    } else {
      state = state.copyWith(
        productId: null,
        productName: null,
      );
    }
  }

  bool isInvalid() {
    return state.policyNumber.isBlank ||
        state.productName.isBlank ||
        state.incidentDescription.isBlank ||
        state.dateOfAccident.isBlank ||
        state.productId.isBlank ||
        state.carrierId.isBlank;
  }
}
