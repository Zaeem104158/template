import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:thrive_mobile_app/app/exports/generated_values_export.dart';
import 'package:thrive_mobile_app/app/routes/route_paths.dart';
import 'package:thrive_mobile_app/app/values/app_colors.dart';
import 'package:thrive_mobile_app/app/widget/appbar_widget.dart';
import 'package:thrive_mobile_app/app/widget/button_widget.dart';
import 'package:thrive_mobile_app/app/widget/error_retry_widget.dart';
import 'package:thrive_mobile_app/app/widget/image_view_widget.dart';
import 'package:thrive_mobile_app/app/widget/text_widget.dart';
import 'package:thrive_mobile_app/features/onboarding/provider/introduction_provider.dart';
import '../../../app/values/app_fonts.dart';

class IntroductionPage extends ConsumerWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final introDataAsync = ref.watch(introductionsDataProvider);
    final introSliderIndex = ref.watch(introSliderIndexProvider);

    return Scaffold(
      body: SafeArea(
        child: introDataAsync.when(
          loading: () => const CircularProgressIndicator(),
          error: (err, stack) => ErrorRetryWidget(
            "Error: ${err.toString()}",
            onPressed: () => ref.refresh(introductionsDataProvider),
          ),
          data: (introData) {
            return SafeArea(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: TextWidget(
                      LocaleKeys.skipKorun.tr(),
                      padding: const EdgeInsets.all(16),
                      onPressed: () => _sendToLanguagePage(context),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextWidget(
                    introData[introSliderIndex].title,
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
                  ),
                  TextWidget(
                    introData[introSliderIndex].subtitle,
                    padding: const EdgeInsets.all(16),
                  ),
                  Expanded(
                    child: CarouselSlider(
                      items: List.generate(introData.length, (i) {
                        var intro = introData[i];
                        var imageUrl = intro.imageUrl;

                        return Container(
                          width: double.infinity,
                          height: double.infinity,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: ImageViewWidget(
                              imageUrl: imageUrl,
                              placeHolderIcon: defaultIconAsset,
                              boxFit: BoxFit.contain,
                              isLocalAsset: true,
                              backgroundColor: Colors.grey,
                              backgroundRadius: 0,
                              imageRadius: 0,
                              isCircular: false,
                            ),
                          ),
                        );
                      }),
                      options: CarouselOptions(
                        autoPlay: introData.length > 1,
                        height: double.infinity,
                        viewportFraction: 1,
                        enlargeCenterPage: false,
                        enableInfiniteScroll: true,
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (index, reason) {
                          ref.read(introSliderIndexProvider.notifier).state =
                              index;
                        },
                      ),
                      carouselController: CarouselController(),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextWidget(
                    introData[introSliderIndex].description,
                    padding: const EdgeInsets.all(16),
                  ),
                  if (introSliderIndex < introData.length - 1) ...[
                    Container(
                      margin: const EdgeInsets.only(
                        top: 3,
                        left: 5,
                        right: 5,
                      ),
                      alignment: Alignment.center,
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        children: introData.map((url) {
                          int index = introData.indexOf(url);

                          return Container(
                            width: 24,
                            height: 5,
                            margin: const EdgeInsets.symmetric(
                                vertical: 4.0, horizontal: 3.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: introSliderIndex == index
                                  ? colorPrimary
                                  : Colors.grey.withOpacity(0.8),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    SizedBox(
                      height: 36,
                    ),
                  ] else ...[
                    ButtonWidget(
                      text: LocaleKeys.shuruKorun.tr(),
                      onPressed: () => _sendToLanguagePage(context),
                    ),
                  ],
                  SizedBox(
                    height: 16,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  void _sendToLanguagePage(BuildContext context) {
    context.push(routeLanguage);
  }
}
