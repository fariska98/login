import 'package:flutter/material.dart';
import 'package:todo_app/core/app_export.dart';
import 'package:todo_app/widgets/app_bar/appbar_iconbutton.dart';
import 'package:todo_app/widgets/app_bar/appbar_title.dart';
import 'package:todo_app/widgets/app_bar/custom_app_bar.dart';
import 'package:todo_app/widgets/custom_elevated_button.dart';
import 'package:todo_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                leadingWidth: 56.h,
                leading: AppbarIconbutton(
                    svgPath: ImageConstant.imgArrowleft,
                    margin:
                        EdgeInsets.only(left: 32.h, top: 14.v, bottom: 17.v),
                    onTap: () {
                      onTapArrowleftone(context);
                    }),
                actions: [
                  AppbarTitle(
                      text: "lbl_forgot_password".tr,
                      margin: EdgeInsets.symmetric(
                          horizontal: 35.h, vertical: 14.v))
                ]),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 31.h, vertical: 22.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              height: 183.v,
                              width: 262.h,
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: SizedBox(
                                            width: 245.h,
                                            child: Text(
                                                "msg_if_you_are_always".tr,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: theme
                                                    .textTheme.labelLarge!
                                                    .copyWith(height: 1.67)))),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: SizedBox(
                                            width: 262.h,
                                            child: Text(
                                                "msg_helping_others_means".tr,
                                                maxLines: 3,
                                                overflow: TextOverflow.ellipsis,
                                                style: theme
                                                    .textTheme.displaySmall!
                                                    .copyWith(height: 1.29))))
                                  ])),
                          SizedBox(height: 37.v),
                          CustomImageView(
                              svgPath: ImageConstant.imgLogoGray5001121x135,
                              height: 121.v,
                              width: 135.h,
                              alignment: Alignment.center),
                          SizedBox(height: 27.v),
                          Align(
                              alignment: Alignment.center,
                              child: Text("lbl_forgot_password".tr,
                                  style: theme.textTheme.titleMedium)),
                          SizedBox(height: 45.v),
                          CustomTextFormField(
                              controller: emailController,
                              hintText: "lbl_your_email".tr,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.emailAddress),
                          Container(
                              width: 246.h,
                              margin: EdgeInsets.only(
                                  top: 19.v, right: 64.h, bottom: 7.v),
                              child: Text("msg_lorem_ipsum_dolor".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.bodySmall!
                                      .copyWith(height: 1.67)))
                        ]))),
            bottomNavigationBar: CustomElevatedButton(
                text: "lbl_start".tr,
                margin: EdgeInsets.only(left: 32.h, right: 32.h, bottom: 52.v),
                onTap: () {
                  onTapStart(context);
                })));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the signupScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the signupScreen.
  onTapStart(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signupScreen);
  }
}
