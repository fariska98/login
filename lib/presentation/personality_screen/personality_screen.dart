import 'package:flutter/material.dart';
import 'package:todo_app/core/app_export.dart';
import 'package:todo_app/widgets/app_bar/appbar_iconbutton.dart';
import 'package:todo_app/widgets/app_bar/appbar_title.dart';
import 'package:todo_app/widgets/app_bar/custom_app_bar.dart';
import 'package:todo_app/widgets/custom_elevated_button.dart';
import 'package:todo_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PersonalityScreen extends StatelessWidget {
  PersonalityScreen({Key? key}) : super(key: key);

  TextEditingController userNameController = TextEditingController();

  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController hobbytwoController = TextEditingController();

  TextEditingController dateOfBirthController = TextEditingController();

  TextEditingController countryController = TextEditingController();

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
                      text: "lbl_personality".tr,
                      margin: EdgeInsets.symmetric(
                          horizontal: 32.h, vertical: 14.v))
                ]),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 19.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 32.h, right: 32.h, bottom: 5.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgProfileimage,
                                  height: 139.adaptSize,
                                  width: 139.adaptSize,
                                  radius: BorderRadius.circular(69.h),
                                  alignment: Alignment.center),
                              SizedBox(height: 18.v),
                              Align(
                                  alignment: Alignment.center,
                                  child: Opacity(
                                      opacity: 0.8,
                                      child: Text("lbl_edit_photo".tr,
                                          style: CustomTextStyles
                                              .labelLargeSecondaryContainer_1))),
                              SizedBox(height: 50.v),
                              Text("lbl_username".tr,
                                  style: theme.textTheme.labelLarge),
                              SizedBox(height: 13.v),
                              CustomTextFormField(
                                  controller: userNameController,
                                  hintText: "lbl_adalahalcana".tr,
                                  hintStyle:
                                      CustomTextStyles.titleSmallOnPrimary_1),
                              SizedBox(height: 18.v),
                              Text("lbl_first_name2".tr,
                                  style: theme.textTheme.labelLarge),
                              SizedBox(height: 13.v),
                              CustomTextFormField(
                                  controller: firstNameController,
                                  hintText: "lbl_alcanasatre".tr,
                                  hintStyle:
                                      CustomTextStyles.titleSmallOnPrimary_1),
                              SizedBox(height: 18.v),
                              Text("lbl_last_name2".tr,
                                  style: theme.textTheme.labelLarge),
                              SizedBox(height: 13.v),
                              CustomTextFormField(
                                  controller: lastNameController,
                                  hintText: "lbl_fourta".tr,
                                  hintStyle:
                                      CustomTextStyles.titleSmallOnPrimary_1),
                              SizedBox(height: 20.v),
                              Text("lbl_hobby".tr,
                                  style: theme.textTheme.labelLarge),
                              SizedBox(height: 11.v),
                              CustomTextFormField(
                                  controller: hobbytwoController,
                                  hintText: "lbl_sleep".tr,
                                  hintStyle:
                                      CustomTextStyles.titleSmallOnPrimary_1),
                              SizedBox(height: 18.v),
                              Text("lbl_date_of_birth".tr,
                                  style: theme.textTheme.labelLarge),
                              SizedBox(height: 13.v),
                              CustomTextFormField(
                                  controller: dateOfBirthController,
                                  hintText: "lbl_28_may_2002".tr,
                                  hintStyle:
                                      CustomTextStyles.titleSmallOnPrimary_1),
                              SizedBox(height: 20.v),
                              Text("lbl_country".tr,
                                  style: theme.textTheme.labelLarge),
                              SizedBox(height: 11.v),
                              CustomTextFormField(
                                  controller: countryController,
                                  hintText: "lbl_indonesian".tr,
                                  hintStyle:
                                      CustomTextStyles.titleSmallOnPrimary_1,
                                  textInputAction: TextInputAction.done),
                              SizedBox(height: 34.v),
                              CustomElevatedButton(
                                  text: "lbl_change_save".tr,
                                  buttonTextStyle:
                                      CustomTextStyles.titleMediumWhiteA700,
                                  onTap: () {
                                    onTapChangesave(context);
                                  })
                            ]))))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the workTodayScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [Navigator] widget
  /// to push the named route for the workTodayScreen.
  onTapChangesave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.workTodayScreen);
  }
}
