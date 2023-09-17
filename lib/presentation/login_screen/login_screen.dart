import 'package:flutter/material.dart';
import 'package:todo_app/core/app_export.dart';
import 'package:todo_app/widgets/app_bar/appbar_iconbutton.dart';
import 'package:todo_app/widgets/app_bar/appbar_title.dart';
import 'package:todo_app/widgets/app_bar/custom_app_bar.dart';
import 'package:todo_app/widgets/custom_elevated_button.dart';
import 'package:todo_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

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
                      text: "lbl_login".tr,
                      margin: EdgeInsets.symmetric(
                          horizontal: 48.h, vertical: 14.v))
                ]),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 11.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 32.h, right: 32.h, bottom: 5.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  width: 221.h,
                                  margin: EdgeInsets.only(right: 89.h),
                                  child: Text("msg_this_is_your_community".tr,
                                      maxLines: 4,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.displaySmall!
                                          .copyWith(height: 1.18))),
                              Container(
                                  width: 282.h,
                                  margin:
                                      EdgeInsets.only(top: 1.v, right: 28.h),
                                  child: Text("msg_our_community_is3".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.labelLarge!
                                          .copyWith(height: 1.67))),
                              SizedBox(height: 21.v),
                              CustomImageView(
                                  svgPath: ImageConstant.imgLogoGray5001113x116,
                                  height: 113.v,
                                  width: 116.h,
                                  alignment: Alignment.center),
                              SizedBox(height: 115.v),
                              CustomTextFormField(
                                  controller: emailController,
                                  hintText: "lbl_email2".tr,
                                  textInputType: TextInputType.emailAddress,
                                  borderDecoration: TextFormFieldStyleHelper
                                      .outlineOnPrimaryTL14),
                              SizedBox(height: 24.v),
                              CustomTextFormField(
                                  controller: passwordController,
                                  hintText: "lbl_password".tr,
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.visiblePassword,
                                  obscureText: true,
                                  borderDecoration: TextFormFieldStyleHelper
                                      .outlineOnPrimaryTL14),
                              SizedBox(height: 26.v),
                              GestureDetector(
                                  onTap: () {
                                    onTapTxtForgotpasswor(context);
                                  },
                                  child: Text("msg_forgot_password".tr,
                                      style: CustomTextStyles
                                          .labelLargeSecondaryContainerSemiBold)),
                              SizedBox(height: 23.v),
                              CustomElevatedButton(
                                  text: "lbl_next".tr,
                                  onTap: () {
                                    onTapNext(context);
                                  }),
                              SizedBox(height: 33.v),
                              Align(
                                  alignment: Alignment.center,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapDonthaveanaccou(context);
                                      },
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 1.v),
                                                child: Text(
                                                    "msg_don_t_have_an_account"
                                                        .tr,
                                                    style: theme
                                                        .textTheme.labelLarge)),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 8.h),
                                                child: Text("lbl_signup2".tr,
                                                    style: CustomTextStyles
                                                        .labelLargeSecondaryContainerSemiBold))
                                          ])))
                            ]))))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the forgotPasswordScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the forgotPasswordScreen.
  onTapTxtForgotpasswor(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.forgotPasswordScreen);
  }

  /// Navigates to the signupScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the signupScreen.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signupScreen);
  }

  /// Navigates to the signupScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the signupScreen.
  onTapDonthaveanaccou(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signupScreen);
  }
}
