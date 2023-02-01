import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/app/provider/core_provider.dart';
import 'package:thrive_mobile_app/features/profile/repository/profile_repository.dart';
import 'package:thrive_mobile_app/features/profile/repository/profile_repository_impl.dart';

final profileRepositoryProvider = Provider<ProfileRepository>((ref) {
  return ProfileRepositoryImpl(
    ref.watch(apiClientProvider),
    ref.watch(commonRepositoryProvider),
  );
});
