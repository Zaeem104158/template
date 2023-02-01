import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/app/provider/core_provider.dart';
import 'package:thrive_mobile_app/features/carrier/repository/carrier_repository.dart';
import 'package:thrive_mobile_app/features/carrier/repository/carrier_repository_impl.dart';

final carrierRepositoryProvider = Provider<CarrierRepository>((ref) {
  return CarrierRepositoryImpl(ref.watch(apiClientProvider));
});
