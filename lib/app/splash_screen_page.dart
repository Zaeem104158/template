import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/shared/utils/util.dart';
import 'package:thrive_mobile_app/app/model/user/user.dart';
import 'package:thrive_mobile_app/app/model/db_file/db_file.dart';

import 'values/constants.dart';
import 'values/app_colors.dart';
import 'provider/core_provider.dart';
import '../app/routes/route_paths.dart';
import '../shared/utils/extensions.dart';
import '../app/exports/generated_values_export.dart';

class SplashScreenPage extends ConsumerWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = context.isDarkMode;
    _authenticationCheck(context, ref);

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: isDarkMode ? colorDarkMode : colorWhite,
        ),
        child: Center(
          child: Image.asset(
            isDarkMode
                ? Assets.logos.splashScreenLogoDark.path
                : Assets.logos.splashScreenLogo.path,
            height: 180,
            width: 264,
          ),
        ),
      ),
    );
  }

  void _authenticationCheck(BuildContext context, WidgetRef ref) async {
    // context.go(routeLanguage);

    // final preferenceManager = ref.read(preferenceManagerProvider);

    // try {
    //   final userId = await preferenceManager.getInt(keyUserId);
    //   final loggedInUserSateNotifier =
    //       ref.read(loggedInUserSateProvider.notifier);

    //   loggedInUserSateNotifier.state = null;
    //   final isConnected = await ref.isInternetConnected(context);

    //   if (userId > 0) {
    //     final name = await preferenceManager.getString(keyUserName);
    //     final email = await preferenceManager.getString(keyUserEmail);
    //     final imageUrl = await preferenceManager.getString(keyUserImageUrl);

    //     final user = User(
    //       id: userId,
    //       name: name ?? "",
    //       email: email ?? "",
    //       photo: DbFile(id: 0, fileUrl: imageUrl ?? ""),
    //     );

    //     if (isConnected) {
    //       subscribeUnSubscribeTopicToFirebase(
    //         userId,
    //         context: context,
    //       );
    //     }

    //     loggedInUserSateNotifier.state = user;
    //   } else if(isConnected) {
    //     subscribeUnSubscribeTopicToFirebase(
    //       userId,
    //       context: context,
    //       isUnSubscribe: true,
    //     );
    //   }

    //   context.go(routeNavigation);
    // } catch (e) {
    //   preferenceManager.clear().then((value) {
    //     e.toString().showSnackBar(context);
    //     context.go(routeNavigation);
    //   });
    // }
  }
}
