import 'package:flutter/material.dart';
import 'package:thrive_mobile_app/app/model/user/user.dart';
import 'package:thrive_mobile_app/app/values/app_colors.dart';
import 'package:thrive_mobile_app/app/widget/profile_image_head_widget.dart';
import 'package:thrive_mobile_app/app/widget/text_form_field_wiget.dart';
import 'package:thrive_mobile_app/app/exports/generated_values_export.dart';
import 'package:thrive_mobile_app/features/profile/model/user_details/user_details.dart';
import 'package:thrive_mobile_app/shared/utils/util.dart';

class ProfileBodyWidget extends StatelessWidget {
  const ProfileBodyWidget({
    Key? key,
    this.user,
    this.userDetails,
    this.onChangedName,
    this.onChangedPhone,
    this.onChangedWebsite,
    this.onPressedCameraIcon,
    this.isShimmerLoading = false,
    this.isImageUploading = false,
  }) : super(key: key);

  final User? user;
  final bool isShimmerLoading;
  final bool isImageUploading;
  final UserDetails? userDetails;
  final VoidCallback? onPressedCameraIcon;
  final ValueChanged<String?>? onChangedName;
  final ValueChanged<String?>? onChangedPhone;
  final ValueChanged<String?>? onChangedWebsite;

  @override
  Widget build(BuildContext context) {
    String? fileUrl = user?.photo?.fileUrl;

    return Column(
      children: [
        const SizedBox(
          height: 16,
        ),
        ProfileImageHeadWidget(
          height: 120,
          width: 120,
          isLoading: isImageUploading,
          iconMargin: const EdgeInsets.only(
            top: 5,
            right: 5,
          ),
          imageUrl: fileUrl,
          onPressedCameraIcon: onPressedCameraIcon,
          onPressedImage: () => showImageDialog(context, fileUrl),
        ),
        const SizedBox(
          height: 8,
        ),
        if (!isShimmerLoading) ...[
          TextFormFieldWidget(
            hint: LocaleKeys.name.tr(),
            textInputAction: TextInputAction.next,
            textInputType: TextInputType.text,
            defaultValue: user?.name,
            onChanged: onChangedName,
          ),
          TextFormFieldWidget(
            hint: LocaleKeys.email.tr(),
            isValidate: false,
            enabled: false,
            textFontColor: colorFadeAsh,
            defaultValue: user?.email,
            textInputAction: TextInputAction.next,
            textInputType: TextInputType.emailAddress,
          ),
          TextFormFieldWidget(
            hint: LocaleKeys.phone.tr(),
            isValidate: false,
            defaultValue: userDetails?.phone,
            textInputAction: TextInputAction.next,
            textInputType: TextInputType.phone,
            onChanged: onChangedPhone,
          ),
          TextFormFieldWidget(
            hint: LocaleKeys.website.tr(),
            isValidate: false,
            defaultValue: userDetails?.website,
            textInputType: TextInputType.text,
            onChanged: onChangedWebsite,
          ),
        ] else ...[
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 5, 12, 5),
            child: Container(
              height: 44,
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 5, 12, 5),
            child: Container(
              height: 44,
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 5, 12, 5),
            child: Container(
              height: 44,
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 5, 12, 5),
            child: Container(
              height: 44,
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(36, 20, 36, 5),
            child: Container(
              height: 44,
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
            ),
          ),
        ],
      ],
    );
  }
}
