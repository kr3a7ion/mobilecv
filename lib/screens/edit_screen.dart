// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:mobilecv/contants/colors/app_colors.dart';
import 'package:mobilecv/contants/contant_value/cv_variables.dart';
import 'package:mobilecv/contants/contant_value/spacers.dart';
import 'package:mobilecv/contants/widgets/custom_divider.dart';
import 'package:mobilecv/contants/widgets/custom_sub_header.dart';

import 'package:mobilecv/contants/widgets/custom_textfield.dart';
import 'package:mobilecv/screens/home_screen.dart';

class EditScreen extends StatelessWidget {
  static const editScreen = '/editScreen';
  const EditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, CvHomeScreen.homeScreen);
              },
              child: const Text('Save')),
        ],
        centerTitle: true,
        leadingWidth: 100,
        leading: TextButton(
          onPressed: () {
            Navigator.popAndPushNamed(context, CvHomeScreen.homeScreen);
          },
          child: const Text('Cancel'),
        ),
        title: const CustomSubHeader(
          theText: 'EDIT CV',
          theColor: AppColors.appColorBlack,
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: appPadding(
          theChild: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // BIO DATA CAPTURE
              const CustomSubHeader(theText: 'BIO DATA'),
              const CustomDivider(theColor: AppColors.backgroundColorGrey),
              kSpacerHeight15,
              for (String theNames in theNameList.keys)
                CustomTextField(
                  theInialValue: theNameList[theNames],
                  theLabel: theNames,
                ),

              // CONTACT DATA
              kSpacerHeight20,
              const CustomSubHeader(theText: theHeaderContact),
              const CustomDivider(theColor: AppColors.backgroundColorGrey),
              kSpacerHeight10,
              for (String theKeys in theContactList.keys)
                CustomTextField(
                  theLabel: theKeys,
                  theInialValue: theContactList[theKeys],
                ),

              // SKILLS DATA
              kSpacerHeight20,
              const CustomSubHeader(theText: theHeaderSkills),
              const CustomDivider(theColor: AppColors.backgroundColorGrey),
              kSpacerHeight10,
              for (String theValue in skillsAquired)
                CustomTextField(
                  theLabel: '',
                  theInialValue: theValue,
                ),

              // LANGUAGES DATA
              kSpacerHeight20,
              const CustomSubHeader(theText: theHeaderLanguage),
              const CustomDivider(theColor: AppColors.backgroundColorGrey),
              kSpacerHeight10,
              for (String theValue in languages)
                CustomTextField(
                  theLabel:
                      languages.indexOf(theValue) == 1 ? 'Level' : 'Speaks',
                  theInialValue: theValue,
                ),

              // CAREER OBJECTIVES
              kSpacerHeight20,
              const CustomSubHeader(theText: theCareerHeader),
              const CustomDivider(theColor: AppColors.backgroundColorGrey),
              kSpacerHeight10,
              CustomTextField(
                  theMaxline: 10,
                  theTopPaddin: 10,
                  theInputType: TextInputType.multiline,
                  theLabel: '',
                  theInialValue: theCareerObjective),
              kSpacerHeight10,

              // WORK EXPERIENCE
              kSpacerHeight20,
              const CustomSubHeader(theText: theEducationHeader),
              const CustomDivider(theColor: AppColors.backgroundColorGrey),
              kSpacerHeight10,
              for (String theExp in theExperience)
                CustomTextField(
                    theMaxline: 3,
                    theTopPaddin: 10,
                    theInputType: TextInputType.multiline,
                    theLabel: '',
                    theInialValue: theExp),
              kSpacerHeight10,

              // EXPERINCE DATE
              for (String theExp in theExperienceDate)
                CustomTextField(
                    theLabel: theExperienceDate.indexOf(theExp) == 1
                        ? 'Time of Completion'
                        : 'Period',
                    theInialValue: theExp),

              // EDUCATION DATA
              kSpacerHeight20,
              const CustomSubHeader(theText: theEducationHeader),
              const CustomDivider(theColor: AppColors.backgroundColorGrey),
              kSpacerHeight10,
              for (String theKeys in theEducational.keys)
                CustomTextField(
                  theLabel: theKeys,
                  theInialValue: theEducational[theKeys],
                ),

              //
              const CustomDivider(theColor: AppColors.backgroundColorGrey),
              kSpacerHeight10,
              for (String theKeys in theEducationalCollege.keys)
                CustomTextField(
                  theLabel: theKeys,
                  theInialValue: theEducationalCollege[theKeys],
                ),
              kSpacerHeight10,

              // CERTIFICATIONS DATA
              kSpacerHeight20,
              const CustomSubHeader(theText: theCertificateHeader),
              const CustomDivider(theColor: AppColors.backgroundColorGrey),
              kSpacerHeight10,
              for (String theKeys in theCertifications)
                CustomTextField(
                  theLabel: '',
                  theInialValue: theKeys,
                ),
              kSpacerHeight10,

              // REFERENCE DATA
              kSpacerHeight20,
              const CustomSubHeader(theText: theRefereesHeader),
              const CustomDivider(theColor: AppColors.backgroundColorGrey),
              kSpacerHeight10,
              for (String theKeys in theReferences)
                CustomTextField(
                  theLabel: '',
                  theInialValue: theKeys,
                ),
              kSpacerHeight20,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.popAndPushNamed(
                          context, CvHomeScreen.homeScreen);
                    },
                    child: const Text('Save'),
                  ),
                  kSpacerWidth10,
                  ElevatedButton(
                    onPressed: () {
                      Navigator.popAndPushNamed(
                          context, CvHomeScreen.homeScreen);
                    },
                    child: const Text('Cancel'),
                  ),
                ],
              ),
              kSpacerHeight30,
            ],
          ),
        ),
      ),
    );
  }
}

Padding appPadding({required Widget theChild}) {
  return Padding(
    padding: const EdgeInsets.only(
      top: 10,
      left: 20,
      right: 20,
      bottom: 40,
    ),
    child: theChild,
  );
}
