import 'package:thrive_mobile_app/app/values/app_types.dart';

class DocPageData {
  final FileUploadType? fileUploadType;
  final DocType docType;
  final String title;

  DocPageData({
    this.fileUploadType,
    required this.title,
    required this.docType,
  });
}
