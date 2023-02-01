import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:thrive_mobile_app/app/widget/appbar_widget.dart';
import '../model/terms_privacy_response/terms_privacy_response.dart';
import 'package:thrive_mobile_app/app/widget/error_retry_widget.dart';
import 'package:thrive_mobile_app/features/web_view/model/web_view_info.dart';
import 'package:thrive_mobile_app/features/web_view/provider/terms_privacy_provider.dart';

class WebViewComponentPage extends ConsumerWidget {
  final WebViewInfo? webViewInfo;

  WebViewComponentPage({this.webViewInfo});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final apiPath = webViewInfo?.apiPath ?? "";

    return Scaffold(
      appBar: AppBarWidget(
        title: webViewInfo?.title,
      ),
      body: ref.watch(termsPrivacyProvider(apiPath)).when(
            loading: () => Center(
              child: const CircularProgressIndicator(),
            ),
            error: (error, trace) => ErrorRetryWidget(
              "${error.toString()}",
              onPressed: () => _fetchApi(ref, apiPath),
            ),
            data: (data) {
              if (data.success == true && data.payload != null) {
                return WebView(
                  onWebViewCreated: (controller) {
                    _onNavigationDelegateHtml(controller, data.payload!);
                  },
                );
              } else {
                return ErrorRetryWidget(
                  "${data.message}",
                  onPressed: () => _fetchApi(ref, apiPath),
                );
              }
            },
          ),
    );
  }

  void _fetchApi(WidgetRef ref, String apiPath) {
    ref.refresh(termsPrivacyProvider(apiPath));
  }

  void _onNavigationDelegateHtml(
    WebViewController controller,
    TermsPrivacyPayload payload,
  ) async {
    var content = """
    <!DOCTYPE html>
      <html>
      <head><meta name="viewport" content="width=device-width, initial-scale=1.0"></head>
      <body style='"margin: 0; padding: 0;'>
        <div>
          ${payload.description ?? ""}
        </div>
      </body>
    </html>
    """;

    final String contentBase64 = base64Encode(
      const Utf8Encoder().convert(content),
    );
    await controller.loadUrl(
      'data:text/html;base64,$contentBase64',
    );
  }
}
