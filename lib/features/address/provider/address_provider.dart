import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/app/provider/core_provider.dart';
import 'package:thrive_mobile_app/features/address/model/address/address.dart';
import 'package:thrive_mobile_app/features/address/provider/address_validation_provider.dart';
import 'package:thrive_mobile_app/features/address/repository/address_repository.dart';
import 'package:thrive_mobile_app/features/address/repository/address_repository_impl.dart';
import 'package:thrive_mobile_app/features/address/state/address_state.dart';
import 'package:thrive_mobile_app/features/profile/provider/profile_provider.dart';

final addressRepositoryProvider = Provider<AddressRepository>((ref) {
  return AddressRepositoryImpl(ref.watch(apiClientProvider));
});

final addressStateProvider =
    StateNotifierProvider.autoDispose<_AddressStateNotifier, AddressState>((ref) {
  return _AddressStateNotifier(ref.read);
});

class _AddressStateNotifier extends StateNotifier<AddressState> {
  _AddressStateNotifier(this._reader) : super(AddressState.initial());

  final Reader _reader;

  bool isLoading() => state == const AddressState.loading();

  Future<void> createUpdateAddress() async {
    state = AddressState.loading();

    final request = _reader(addressRequestProvider);
    final repository = _reader(addressRepositoryProvider);
    state = await repository.createUpdateAddress(request);

    state.whenOrNull(
      data: (addressResponse) {
        final Address? address = addressResponse.payload;
        _reader(addressRequestProvider.notifier).setAddress(address);

        if (request.addressId == null || request.addressId! <= 0) {
          _reader(profileStateProvider.notifier).setAddress(address);
        }
      },
    );
  }
}
