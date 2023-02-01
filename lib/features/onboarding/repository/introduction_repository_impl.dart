import 'package:easy_localization/easy_localization.dart';
import 'package:thrive_mobile_app/features/onboarding/model/introduction.dart';
import 'package:thrive_mobile_app/features/onboarding/repository/introduction_repository.dart';

import '../../../gen/assets.gen.dart';
import '../../../translations/locale_keys.g.dart';

class IntroductionRepositoryImpl implements IntroductionRepository {
  @override
  List<Introduction> getIntroductionsData() {
    return [
      Introduction(
        title: LocaleKeys.introTitle1.tr(),
        subtitle: LocaleKeys.introSubtitle1.tr(),
        description: LocaleKeys.introDescription1.tr(),
        imageUrl: Assets.images.introImage1.path,
      ),
      Introduction(
        title: LocaleKeys.introTitle2.tr(),
        subtitle: LocaleKeys.introSubtitle2.tr(),
        description: LocaleKeys.introDescription2.tr(),
        imageUrl: Assets.images.introImage2.path,
      ),
      Introduction(
        title: LocaleKeys.introTitle3.tr(),
        subtitle: LocaleKeys.introSubtitle3.tr(),
        description: LocaleKeys.introDescription3.tr(),
        imageUrl: Assets.images.intorImage3.path,
      ),
    ];
  }
}
