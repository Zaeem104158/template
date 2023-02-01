import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:thrive_mobile_app/app/model/user/user.dart';
import 'package:thrive_mobile_app/app/repository/common_repository.dart';
import 'package:thrive_mobile_app/app/repository/common_repository_impl.dart';
import 'package:thrive_mobile_app/features/init/navigation_drawer_menu_item.dart';
import 'package:thrive_mobile_app/shared/utils/util.dart';

import '../../app/push_notification_service.dart';
import '../../shared/preference/preference_manager.dart';
import '../../../shared/network/api_client_provider.dart';
import '../../shared/preference/preference_manager_impl.dart';

final debouncerProvider = Provider.autoDispose<Debouncer>((ref) {
  final _debouncer = Debouncer();
  ref.onDispose(() => _debouncer.dispose());
  return _debouncer;
});

final scrollControllerProvider = Provider.autoDispose<ScrollController>((ref) {
  final _scrollController = ScrollController();
  ref.onDispose(() => _scrollController.dispose());
  return _scrollController;
});

final textEditingControllerProvider =
    Provider.autoDispose<TextEditingController>((ref) {
  final _controller = TextEditingController();
  ref.onDispose(() => _controller.dispose());
  return _controller;
});

final apiClientProvider = Provider<ApiClient>((ref) {
  return ApiClient(
    ref.read,
    ref.watch(connectivityProvider),
    ref.watch(preferenceManagerProvider),
  );
});

final commonRepositoryProvider = Provider<CommonRepository>((ref) {
  return CommonRepositoryImpl(ref.read(apiClientProvider));
});

final connectivityProvider = Provider<Connectivity>((ref) {
  return Connectivity();
});

final preferenceManagerProvider = Provider<PreferenceManager>((ref) {
  return PreferenceManagerImpl();
});

final pushNotificationProvider = Provider<PushNotificationService>((ref) {
  return PushNotificationService();
});

final navigationMenuItemProvider = StateProvider<NavigationMenuItem>((ref) {
  return NavigationMenuItemHelper.home;
});

final loggedInUserSateProvider = StateProvider<User?>((ref) {
  return null;
});

final statusProvider = StateProvider.autoDispose<int>((ref) {
  return 0;
});
