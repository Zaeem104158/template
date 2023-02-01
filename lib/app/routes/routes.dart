import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:thrive_mobile_app/app/settings_page.dart';
import 'package:thrive_mobile_app/features/onboarding/page/introduction_page.dart';
import 'package:thrive_mobile_app/features/onboarding/page/language_page.dart';
import 'package:thrive_mobile_app/features/web_view/model/web_view_info.dart';
import 'package:thrive_mobile_app/features/web_view/widget/webview_wiget_page.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';
import 'package:thrive_mobile_app/app/model/details_page_model.dart';
import 'package:thrive_mobile_app/features/details/details_page.dart';
import 'package:thrive_mobile_app/features/doc/model/doc_page_data.dart';
import 'package:thrive_mobile_app/features/policy/widget/policy_page.dart';
import 'package:thrive_mobile_app/features/policy/model/policy/policy.dart';
import 'package:thrive_mobile_app/features/home/widget/home/home_page.dart';
import 'package:thrive_mobile_app/features/init/navigation_drawer_page.dart';
import 'package:thrive_mobile_app/features/address/widget/address_page.dart';
import 'package:thrive_mobile_app/features/address/model/address/address.dart';
import 'package:thrive_mobile_app/features/certificate/widget/certificate_page.dart';
import 'package:thrive_mobile_app/features/opportunity/widget/opportunity_page.dart';
import 'package:thrive_mobile_app/features/profile/widget/profile/profile_page.dart';
import 'package:thrive_mobile_app/features/support_ticket/model/email_ticket_id.dart';
import 'package:thrive_mobile_app/features/home/widget/product/all_product_page.dart';
import 'package:thrive_mobile_app/features/claim/widget/create/create_claim_page.dart';
import 'package:thrive_mobile_app/features/doc/widget/upload/upload_policy_doc_page.dart';
import 'package:thrive_mobile_app/features/address/widget/create_update_address_page.dart';
import 'package:thrive_mobile_app/features/profile/widget/update_password/update_password_page.dart';
import 'package:thrive_mobile_app/features/support_ticket/widget/create/create_support_ticket_page.dart';
import 'package:thrive_mobile_app/features/support_ticket/widget/message/support_ticket_message_page.dart';

import 'route_paths.dart';
import '../widget/not_found_widget.dart';
import '../../features/doc/widget/doc/doc_page.dart';
import '../../features/auth/widget/login_screen.dart';
import '../../features/auth/widget/forgot_password_screen.dart';
import '../../features/notification/widget/notification_page.dart';

final router = GoRouter(
  routes: [
    _setRoute(
      routeInitial,
      // const SplashScreenPage(),
      // const LanguagePage(),
      const IntroductionPage(),
    ),
    _setRoute(
      routeIntroduction,
      const IntroductionPage(),
    ),
    _setRoute(
      routeLanguage,
      const LanguagePage(),
    ),
    _setRoute(
      routeNavigation,
      NavigationDrawerPage(),
    ),
    _setRoute(
      routeSettings,
      const SettingsPage(),
    ),
    _setRoute(
      routeForgotPassword,
      const ForgotPasswordPage(),
    ),
    _setRoute(
      routeUpdatePassword,
      const UpdatePasswordPage(),
    ),
    _setRoute(
      routeHome,
      const HomePage(),
    ),
    _setRoute(
      routeProfile,
      const ProfilePage(),
    ),
    _setRoute(
      routeAddress,
      AddressPage(),
    ),
    _setRoute(
      routeNotification,
      NotificationPage(),
    ),
    _setRoute(
      routeOpportunity,
      OpportunityPage(),
    ),
    _setRoute(
      routeCreateSupportTicket,
      const CreateSupportTicketPage(),
    ),
    _setRoute(
      routeCreateClaim,
      CreateClaimPage(),
    ),
    _setRoute(
      routePolicy,
      PolicyPage(),
    ),
    GoRoute(
      path: routeLogin,
      pageBuilder: (context, state) {
        return _getRouteWidget(
          context,
          state,
          LoginPage(),
        );
      },
    ),
    GoRoute(
      path: routeDoc,
      pageBuilder: (context, state) {
        return _getRouteWidget(
          context,
          state,
          DocPage(state.extra as DocPageData),
        );
      },
    ),
    GoRoute(
      path: routeWebView,
      pageBuilder: (context, state) {
        WebViewInfo? extra;

        if (state.extra != null) {
          extra = state.extra as WebViewInfo;
        }

        return _getRouteWidget(
          context,
          state,
          WebViewComponentPage(
            webViewInfo: extra,
          ),
        );
      },
    ),
    GoRoute(
      path: routeUploadDoc,
      pageBuilder: (context, state) {
        return _getRouteWidget(
          context,
          state,
          UploadDocPage(state.extra as DocPageData),
        );
      },
    ),
    GoRoute(
      path: routeAllProduct,
      pageBuilder: (context, state) {
        return _getRouteWidget(
          context,
          state,
          AllProductPage(
            autofocus: state.extra != null,
          ),
        );
      },
    ),
    GoRoute(
      path: routeSupportTicketMessage,
      pageBuilder: (context, state) {
        return _getRouteWidget(
          context,
          state,
          SupportTicketMessagePage(
            emailTicketId: state.extra as EmailTicketId,
          ),
        );
      },
    ),
    GoRoute(
      path: routeCertificate,
      pageBuilder: (context, state) {
        Policy? extra;

        if (state.extra != null) {
          extra = state.extra as Policy;
        }

        return _getRouteWidget(
          context,
          state,
          CertificatePage(
            policy: extra,
          ),
        );
      },
    ),
    GoRoute(
      path: routeCreateUpdateAddress,
      pageBuilder: (context, state) {
        Address? extra;

        if (state.extra != null) {
          extra = state.extra as Address;
        }

        return _getRouteWidget(
          context,
          state,
          CreateUpdateAddressPage(
            address: extra,
          ),
        );
      },
    ),
    GoRoute(
      path: routeDetails,
      pageBuilder: (context, state) {
        DetailsPageModel? extra;

        if (state.extra != null) {
          extra = state.extra as DetailsPageModel;
        }

        return _getRouteWidget(
          context,
          state,
          DetailsPage(
            detailsPageModel: extra,
          ),
        );
      },
    ),
  ],
  errorPageBuilder: (context, state) {
    return _getRouteWidget(
      context,
      state,
      NotFoundWidget(
        error: state.error.toString(),
        fromNoDataError: false,
      ),
    );
  },
);

GoRoute _setRoute(String path, Widget targetWidget) {
  return GoRoute(
    path: path,
    pageBuilder: (context, state) {
      context.hideSnackBar();

      return CustomTransitionPage(
        key: state.pageKey,
        child: targetWidget,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(opacity: animation, child: child);
        },
      );
    },
  );
}

CustomTransitionPage _getRouteWidget(
  BuildContext context,
  GoRouterState state,
  Widget targetWidget,
) {
  context.hideSnackBar();

  return CustomTransitionPage(
    key: state.pageKey,
    child: targetWidget,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(opacity: animation, child: child);
    },
  );
}
