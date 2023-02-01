import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/features/onboarding/model/introduction.dart';
import 'package:thrive_mobile_app/features/onboarding/repository/introduction_repository.dart';
import 'package:thrive_mobile_app/features/onboarding/repository/introduction_repository_impl.dart';

final introductionRepositoryProvider = Provider<IntroductionRepository>((ref) {
  return IntroductionRepositoryImpl();
});

final introductionsDataProvider = FutureProvider<List<Introduction>>((ref) async {
  final repository = ref.watch(introductionRepositoryProvider);
  return repository.getIntroductionsData();
});

final introSliderIndexProvider = StateProvider<int>((ref) {
  return 0;
});
