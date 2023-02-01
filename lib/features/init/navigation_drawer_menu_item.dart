import 'package:flutter/material.dart';
import 'package:thrive_mobile_app/app/exports/generated_values_export.dart';
import 'package:thrive_mobile_app/app/settings_page.dart';
import 'package:thrive_mobile_app/features/auth/widget/login_screen.dart';
import 'package:thrive_mobile_app/features/claim/widget/claims/claim_page.dart';
import 'package:thrive_mobile_app/features/home/widget/home/home_page.dart';
import 'package:thrive_mobile_app/features/notification/widget/notification_page.dart';
import 'package:thrive_mobile_app/features/opportunity/widget/opportunity_page.dart';
import 'package:thrive_mobile_app/features/policy/widget/policy_page.dart';
import 'package:thrive_mobile_app/features/profile/widget/profile/profile_page.dart';
import 'package:thrive_mobile_app/features/quote/widget/quote_page.dart';
import 'package:thrive_mobile_app/features/support_ticket/widget/support_ticket/support_ticket_page.dart';

class NavigationMenuItem {
  final String title;
  final IconData icon;

  const NavigationMenuItem(this.title, this.icon);
}

class NavigationMenuItemHelper {
  static const home = NavigationMenuItem(
    LocaleKeys.home,
    Icons.home,
  );
  static const profile = NavigationMenuItem(
    LocaleKeys.profile,
    Icons.account_circle_rounded,
  );
  static const notification = NavigationMenuItem(
    LocaleKeys.notification,
    Icons.notifications_rounded,
  );
  static const opportunity = NavigationMenuItem(
    LocaleKeys.quoteRequest,
    Icons.format_quote_sharp,
  );
  static const quote = NavigationMenuItem(
    LocaleKeys.quote,
    Icons.light_mode,
  );
  static const claim = NavigationMenuItem(
    LocaleKeys.claim,
    Icons.request_page_rounded,
  );
  static const policy = NavigationMenuItem(
    LocaleKeys.policy,
    Icons.menu_book_rounded,
  );
  static const supportTicket = NavigationMenuItem(
    LocaleKeys.supportCenter,
    Icons.message_rounded,
  );
  static const settings = NavigationMenuItem(
    LocaleKeys.settings,
    Icons.settings,
  );
  static const login = NavigationMenuItem(
    LocaleKeys.login,
    Icons.login,
  );
  static const logout = NavigationMenuItem(
    LocaleKeys.logout,
    Icons.logout,
  );

  static const List<NavigationMenuItem> loggedInMenuItems = [
    home,
    profile,
    notification,
    opportunity,
    quote,
    policy,
    claim,
    supportTicket,
    settings,
    logout,
  ];

  static const List<NavigationMenuItem> logoutMenuItems = [
    home,
    settings,
    login,
  ];

  static Widget getNavigatedWidget(
    NavigationMenuItem currentItem,
  ) {
    switch (currentItem) {
      case home:
        return const HomePage();

      case settings:
        return const SettingsPage();

      case profile:
        return const ProfilePage();

      case supportTicket:
        return SupportTicketPage();

      case opportunity:
        return OpportunityPage(
          isFromNavigationDrawer: true,
        );

      case quote:
        return QuotePage(
          isFromNavigationDrawer: true,
        );

      case claim:
        return ClaimPage(
          isFromNavigationDrawer: true,
        );

      case policy:
        return PolicyPage(
          isFromNavigationDrawer: true,
        );

      case notification:
        return NotificationPage(
          isFromNavigationDrawer: true,
        );

      case login:
      case logout:
        return LoginPage();

      default:
        return const HomePage();
    }
  }
}
