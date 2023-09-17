import 'package:flutter/material.dart';
import 'package:todo_app/core/app_export.dart';
import 'package:todo_app/widgets/custom_elevated_button.dart';
import 'package:todo_app/widgets/custom_icon_button.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 31.h, vertical: 43.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomIconButton(
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          padding: EdgeInsets.all(6.h),
                          onTap: () {
                            onTapBtnArrowleftone(context);
                          },
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowleft)),
                      Padding(
                          padding: EdgeInsets.only(top: 82.v),
                          child: Text("lbl_language".tr,
                              style: theme.textTheme.headlineMedium)),
                      Padding(
                          padding: EdgeInsets.only(top: 7.v),
                          child: Text("msg_your_settings_so".tr,
                              style: theme.textTheme.labelLarge)),
                      CustomElevatedButton(
                          text: "lbl_indonesian2".tr,
                          margin: EdgeInsets.only(top: 86.v),
                          buttonStyle: CustomButtonStyles.fillDeepOrange,
                          buttonTextStyle:
                              CustomTextStyles.labelLargeSecondaryContainer,
                          onTap: () {
                            onTapIndonesian(context);
                          }),
                      CustomElevatedButton(
                          text: "lbl_english".tr,
                          margin: EdgeInsets.only(top: 14.v),
                          buttonStyle: CustomButtonStyles.fillGray,
                          buttonTextStyle:
                              CustomTextStyles.labelLargeDeeppurpleA400),
                      Spacer(),
                      SizedBox(height: 53.v),
                      CustomElevatedButton(
                          text: "lbl_save".tr,
                          buttonTextStyle:
                              CustomTextStyles.titleMediumWhiteA700,
                          onTap: () {
                            onTapSave(context);
                          })
                    ]))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapBtnArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the loginScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the loginScreen.
  onTapIndonesian(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  /// Navigates to the signupScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the signupScreen.
  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signupScreen);
  }
}
