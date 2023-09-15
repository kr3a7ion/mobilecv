import 'package:flutter/material.dart';

import 'package:mobilecv/contants/colors/app_colors.dart';
import 'package:mobilecv/contants/contant_value/cv_variables.dart';
import 'package:mobilecv/contants/contant_value/spacers.dart';
import 'package:mobilecv/contants/data/data.dart';
import 'package:mobilecv/contants/data/save_data.dart';
import 'package:mobilecv/contants/widgets/custom_divider.dart';
import 'package:mobilecv/contants/widgets/custom_sub_header.dart';

import 'package:mobilecv/contants/widgets/custom_textfield.dart';
import 'package:mobilecv/screens/home_screen.dart';

class EditScreen extends StatefulWidget {
  static const editScreen = '/editScreen';
  const EditScreen({super.key});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  @override
  void dispose() {
    super.dispose();
  }

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
                  theLabel: theNames,
                  theController:
                      TextEditingController(text: theNameList[theNames]),
                  theEditorCompleted: (value) => saveData(
                    theMap: theNameList,
                    theKey: theNames,
                    theValue: value,
                  ),
                ),

              // CONTACT DATA
              kSpacerHeight20,
              const CustomSubHeader(theText: theHeaderContact),
              const CustomDivider(theColor: AppColors.backgroundColorGrey),
              kSpacerHeight10,
              for (String theKeys in theContactList.keys)
                CustomTextField(
                  theController:
                      TextEditingController(text: theContactList[theKeys]),
                  theLabel: theKeys,
                  theEditorCompleted: (value) => saveData(
                      theMap: theContactList, theKey: theKeys, theValue: value),
                ),

              // SKILLS DATA
              kSpacerHeight20,
              const CustomSubHeader(theText: theHeaderSkills),
              const CustomDivider(theColor: AppColors.backgroundColorGrey),
              kSpacerHeight10,
              for (String theValue in skillsAquired)
                CustomTextField(
                    theLabel: '',
                    theController: TextEditingController(text: theValue),
                    theEditorCompleted: (value) => saveListData(
                          theList: skillsAquired,
                          theIndex: skillsAquired.indexOf(theValue),
                          theValue: value,
                        )),

              // LANGUAGES DATA
              kSpacerHeight20,
              const CustomSubHeader(theText: theHeaderLanguage),
              const CustomDivider(theColor: AppColors.backgroundColorGrey),
              kSpacerHeight10,
              for (String theValue in languages)
                CustomTextField(
                  theLabel:
                      languages.indexOf(theValue) == 1 ? 'Level' : 'Speaks',
                  theController: TextEditingController(text: theValue),
                  theEditorCompleted: (value) => saveListData(
                    theList: languages,
                    theIndex: languages.indexOf(theValue),
                    theValue: value,
                  ),
                ),

              // CAREER OBJECTIVES
              kSpacerHeight20,
              const CustomSubHeader(theText: theCareerHeader),
              const CustomDivider(theColor: AppColors.backgroundColorGrey),
              kSpacerHeight10,
              CustomTextField(
                theMaxline: 10,
                theTopPadding: 10,
                theInputType: TextInputType.multiline,
                theLabel: '',
                theController: TextEditingController(text: theCareerObjective),
                theEditorCompleted: (value) => saveVarData(
                  theVairable: theCareerObjective,
                  theNewValue: value,
                ),
              ),

              kSpacerHeight10,

              // WORK EXPERIENCE
              kSpacerHeight20,
              const CustomSubHeader(theText: theEducationHeader),
              const CustomDivider(theColor: AppColors.backgroundColorGrey),
              kSpacerHeight10,
              for (String theExp in theExperience)
                CustomTextField(
                  theMaxline: 3,
                  theTopPadding: 10,
                  theInputType: TextInputType.multiline,
                  theLabel: '',
                  theController: TextEditingController(text: theExp),
                  theEditorCompleted: (value) => saveListData(
                    theList: theExperience,
                    theIndex: theExperience.indexOf(theExp),
                    theValue: value,
                  ),
                ),

              kSpacerHeight10,

              // EXPERINCE DATE
              for (String theExp in theExperienceDate)
                CustomTextField(
                  theLabel: theExperienceDate.indexOf(theExp) == 1
                      ? 'Time of Completion'
                      : 'Period',
                  theController: TextEditingController(text: theExp),
                  theEditorCompleted: (value) => saveListData(
                    theList: theExperienceDate,
                    theIndex: theExperienceDate.indexOf(theExp),
                    theValue: value,
                  ),
                ),

              // EDUCATION DATA
              kSpacerHeight20,
              const CustomSubHeader(theText: theEducationHeader),
              const CustomDivider(theColor: AppColors.backgroundColorGrey),
              kSpacerHeight10,
              for (String theKeys in theEducational.keys)
                CustomTextField(
                    theLabel: theKeys,
                    theController:
                        TextEditingController(text: theEducational[theKeys]),
                    theEditorCompleted: (value) => saveData(
                        theMap: theEducational,
                        theKey: theKeys,
                        theValue: value)),

              //
              const CustomDivider(theColor: AppColors.backgroundColorGrey),
              kSpacerHeight10,
              for (String theKeys in theEducationalCollege.keys)
                CustomTextField(
                    theLabel: theKeys,
                    theController: TextEditingController(
                        text: theEducationalCollege[theKeys]),
                    theEditorCompleted: (value) => saveData(
                          theMap: theEducationalCollege,
                          theKey: theKeys,
                          theValue: value,
                        )),
              kSpacerHeight10,

              // CERTIFICATIONS DATA
              kSpacerHeight20,
              const CustomSubHeader(theText: theCertificateHeader),
              const CustomDivider(theColor: AppColors.backgroundColorGrey),
              kSpacerHeight10,
              for (String theKeys in theCertifications)
                CustomTextField(
                  theLabel: '',
                  theController: TextEditingController(text: theKeys),
                  theEditorCompleted: (value) => saveListData(
                    theList: theExperienceDate,
                    theIndex: theCertifications.indexOf(theKeys),
                    theValue: value,
                  ),
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
                  theController: TextEditingController(text: theKeys),
                  theEditorCompleted: (value) => saveListData(
                    theList: theReferences,
                    theIndex: theReferences.indexOf(theKeys),
                    theValue: value,
                  ),
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
