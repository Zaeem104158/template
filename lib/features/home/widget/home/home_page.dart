import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../app/provider/core_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/shared/utils/util.dart';
import 'package:thrive_mobile_app/app/values/app_fonts.dart';
import 'package:thrive_mobile_app/app/values/app_colors.dart';
import 'package:thrive_mobile_app/app/widget/text_widget.dart';
import 'package:thrive_mobile_app/app/routes/route_paths.dart';
import 'package:thrive_mobile_app/app/values/size_config.dart';
import 'package:thrive_mobile_app/shared/utils/extensions.dart';
import 'package:thrive_mobile_app/app/widget/appbar_widget.dart';
import 'package:thrive_mobile_app/app/widget/header_widget.dart';
import 'package:thrive_mobile_app/app/widget/shimmer_widget.dart';
import 'package:thrive_mobile_app/app/model/header_data_model.dart';
import 'package:thrive_mobile_app/app/model/details_page_model.dart';
import 'package:thrive_mobile_app/app/state/common/common_state.dart';
import 'package:thrive_mobile_app/app/widget/error_retry_widget.dart';
import 'package:thrive_mobile_app/app/widget/text_form_field_wiget.dart';
import 'package:thrive_mobile_app/app/widget/refresh_indicator_widget.dart';
import 'package:thrive_mobile_app/features/home/model/product/product.dart';
import 'package:thrive_mobile_app/app/exports/generated_values_export.dart';
import 'package:thrive_mobile_app/features/home/provider/product_provider.dart';
import 'package:thrive_mobile_app/features/init/navigation_drawer_menu_item.dart';
import 'package:thrive_mobile_app/features/home/widget/product/product_widget.dart';
import 'package:thrive_mobile_app/features/details/header_componet_list_widget.dart';
import 'package:thrive_mobile_app/features/home/widget/home/home_grid_view_widget.dart';
import 'package:thrive_mobile_app/features/notification/provider/notification_provider.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  int _selectedIndex = 0;
  final int maxViewLength = 4;

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
    ),
    Icon(Icons.home),
    Text(
      'Index 2: School',
    ),
    Text(
      'Index 2: School',
    ),
  ];

  @override
  void initState() {
    Future.delayed(Duration.zero).then((value) {
      ref.read(pushNotificationProvider).initialise(
        context,
        ref.watch(preferenceManagerProvider),
        (unreadCounter) {
          ref.refresh(unreadCounterProvider);
        },
      );
    });

    super.initState();
  }

  Future<void> _callHomePageApi() async {
    ref.refresh(unreadCounterProvider);
    ref.read(productStateProvider.notifier).getHomePageData();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<CommonState>(coverageStateNotifierProvider, (prev, next) {
      next.whenOrNull(
        loading: () => LocaleKeys.pleaseWait.tr().showSnackBar(context),
        error: (error) => error.showSnackBar(context),
        data: (response) => openUrl(context, response.payload),
      );
    });

    final _productState = ref.watch(productStateProvider);
    final screenWidth = SizeConfig.getScreenWidth(context);
    final _loggedInUserSate = ref.watch(loggedInUserSateProvider);
    final _coverageNotifier = ref.read(coverageStateNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBarWidget(
        isMenuIcon: true,
        title: LocaleKeys.home.tr(),
        isShowNotificationIcon: _loggedInUserSate != null,
      ),
      // body: RefreshIndicatorWidget(
      //   onRefresh: _callHomePageApi,
      //   child: SingleChildScrollView(
      //     physics: const AlwaysScrollableScrollPhysics(),
      //     child: Column(
      //       children: [
      //         GestureDetector(
      //           child: TextFormFieldWidget(
      //             enabled: false,
      //             readOnly: true,
      //             isValidate: false,
      //             prefixIcon: Icons.search,
      //             hint: LocaleKeys.findDesiredProduct.tr(),
      //             floatingLabelBehavior: FloatingLabelBehavior.never,
      //             inputDecorationBorder: const OutlineInputBorder(),
      //             padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      //           ),
      //           onTap: () {
      //             context.hideSnackBar();
      //             context.push(routeAllProduct, extra: true);
      //           },
      //         ),
      //         _productState.when(
      //           loading: () {
      //             return const ShimmerWidget(
      //               widget: Padding(
      //                 padding: EdgeInsets.only(
      //                   top: 16,
      //                   bottom: 16,
      //                 ),
      //                 child: HomeGrivViewWidget(),
      //               ),
      //             );
      //           },
      //           error: (error) {
      //             return ErrorRetryWidget(
      //               error,
      //               divider: 1.3,
      //               onPressed: () => _callHomePageApi(),
      //             );
      //           },
      //           data: (data) {
      //             final recommendedProducts = data.productListResponse?.payload;
      //             final products =
      //                 data.productPaginatedResponse?.payload.content;

      //             return Padding(
      //               padding: const EdgeInsets.only(
      //                 top: 12,
      //                 bottom: 8,
      //               ),
      //               child: Column(
      //                 children: [
      //                   if (!products.isBlank) ...[
      //                     HeaderComponent(
      //                       LocaleKeys.products.tr(),
      //                       showViewAll: products!.length > maxViewLength,
      //                       onPressed: () => context.push(routeAllProduct),
      //                     ),
      //                     HomeGrivViewWidget(
      //                       maxLines: 1,
      //                       products: products,
      //                       maxViewLength: maxViewLength,
      //                       textOverflow: TextOverflow.ellipsis,
      //                       coveragePressed: (id) =>
      //                           _coverageNotifier.getCoverageUrl(id),
      //                       onPressed: (product) {
      //                         final iconUrl = product.icon?.fileUrl;
      //                         final imageUrl = product.image?.fileUrl;
      //                         final fileUrl =
      //                             !imageUrl.isBlank ? imageUrl : iconUrl;

      //                         context.push(
      //                           routeDetails,
      //                           extra: DetailsPageModel(
      //                             widget: getProductDetailsWidget(product),
      //                             imageUrls: fileUrl.isBlank ? [] : [fileUrl!],
      //                           ),
      //                         );
      //                       },
      //                     ),
      //                   ],
      //                   const SizedBox(
      //                     height: 12,
      //                   ),
      //                   if (_loggedInUserSate != null &&
      //                       !recommendedProducts.isBlank) ...[
      //                     HeaderComponent(
      //                       LocaleKeys.recommendedProducts.tr(),
      //                     ),
      //                     SingleChildScrollView(
      //                       scrollDirection: Axis.horizontal,
      //                       child: Padding(
      //                         padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
      //                         child: Row(
      //                           children: recommendedProducts!.map((product) {
      //                             product =
      //                                 product.copyWith(isRecommended: true);

      //                             return Container(
      //                               width: SizeConfig.isLandscapeMode(context)
      //                                   ? screenWidth / 2
      //                                   : screenWidth / 1.18,
      //                               decoration: BoxDecoration(
      //                                 borderRadius: BorderRadius.circular(5),
      //                               ),
      //                               child: GestureDetector(
      //                                 onTap: () {
      //                                   final iconUrl = product.icon?.fileUrl;
      //                                   final imageUrl = product.image?.fileUrl;
      //                                   final fileUrl = !imageUrl.isBlank
      //                                       ? imageUrl
      //                                       : iconUrl;

      //                                   context.push(
      //                                     routeDetails,
      //                                     extra: DetailsPageModel(
      //                                       widget: getProductDetailsWidget(
      //                                           product),
      //                                       imageUrls: fileUrl.isBlank
      //                                           ? []
      //                                           : [fileUrl!],
      //                                     ),
      //                                   );
      //                                 },
      //                                 child: ProductWidget(
      //                                   maxLines: 2,
      //                                   height: 190,
      //                                   name: product.name,
      //                                   imageUrl: product.image?.fileUrl,
      //                                   textOverflow: TextOverflow.ellipsis,
      //                                   coverageButtonPadding:
      //                                       const EdgeInsets.all(8),
      //                                   coveragePressed: () => _coverageNotifier
      //                                       .getCoverageUrl(product.id),
      //                                 ),
      //                               ),
      //                             );
      //                           }).toList(),
      //                         ),
      //                       ),
      //                     ),
      //                     const SizedBox(
      //                       height: 16,
      //                     ),
      //                   ] else if (_loggedInUserSate == null) ...[
      //                     Padding(
      //                       padding: const EdgeInsets.all(14),
      //                       child: GestureDetector(
      //                         onTap: () {
      //                           ref
      //                               .read(navigationMenuItemProvider.notifier)
      //                               .state = NavigationMenuItemHelper.login;
      //                         },
      //                         child: Column(
      //                           children: [
      //                             TextWidget(
      //                               LocaleKeys.loginToAccessMoreFeature.tr(),
      //                               fontSize: semiTextFontSize,
      //                               padding: EdgeInsets.zero,
      //                             ),
      //                             TextWidget(
      //                               LocaleKeys.loginNow.tr(),
      //                               color: colorPrimary,
      //                               fontWeight: mediumFontWeight,
      //                               padding: EdgeInsets.only(top: 1),
      //                             ),
      //                           ],
      //                         ),
      //                       ),
      //                     ),
      //                   ],
      //                 ],
      //               ),
      //             );
      //           },
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              spreadRadius: 0,
              blurRadius: 1,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Assets.icons.homeIcon.image(
                  width: _selectedIndex == 0 ? 20 : 18,
                  color: _selectedIndex == 0 ? null : Colors.grey,
                ),
                label: LocaleKeys.home.tr(),
                backgroundColor: Colors.red,
              ),
              BottomNavigationBarItem(
                icon: Assets.icons.amolAlertIcon.image(
                  width: _selectedIndex == 1 ? 20 : 18,
                  color: _selectedIndex == 1 ? null : Colors.grey,
                ),
                label: LocaleKeys.amaliyat.tr(),
                backgroundColor: Colors.red,
              ),
              BottomNavigationBarItem(
                icon: Assets.icons.compassIcon.image(
                  width: _selectedIndex == 2 ? 20 : 18,
                  color: _selectedIndex == 2 ? null : Colors.grey,
                ),
                label: LocaleKeys.qiblaCompass.tr(),
                backgroundColor: Colors.red,
              ),
              BottomNavigationBarItem(
                icon: Assets.icons.userHeadIcon.image(
                  width: _selectedIndex == 3 ? 20 : 18,
                  color: _selectedIndex == 3 ? null : Colors.grey,
                ),
                label: LocaleKeys.profile.tr(),
                backgroundColor: Colors.red,
              ),
            ],
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: true,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

Widget getProductDetailsWidget(Product product) {
  final List<HeaderDataModel> headerDatas = [
    if (!product.shortDescription.isBlank) ...[
      HeaderDataModel(
        title: LocaleKeys.description.tr(),
        description: product.shortDescription,
      ),
    ],
    if (!product.longDescription.isBlank) ...[
      HeaderDataModel(
        title: LocaleKeys.details.tr(),
        description: product.longDescription,
      ),
    ],
  ];

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      TextWidget(
        product.name,
        padding: EdgeInsets.zero,
        textAlign: TextAlign.start,
        fontWeight: FontWeight.bold,
      ),
      if (product.creationDateTimeStamp > 0) ...[
        const SizedBox(
          height: 4,
        ),
        Row(
          children: [
            const Icon(
              Icons.access_time,
              color: Colors.grey,
              size: 12,
            ),
            const SizedBox(
              width: 5,
            ),
            Flexible(
              child: TextWidget(
                product.creationDateTimeStamp.formattedDateFromTimestamp(),
                fontSize: 11,
                color: Colors.grey,
                padding: EdgeInsets.zero,
                textAlign: TextAlign.start,
              ),
            ),
          ],
        ),
      ],
      const SizedBox(
        height: 16,
      ),
      HeaderComponetListWidget(data: headerDatas),
      const SizedBox(
        height: 16,
      ),
    ],
  );
}
