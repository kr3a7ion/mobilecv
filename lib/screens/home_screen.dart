import 'package:flutter/material.dart';

import 'package:mobilecv/contants/colors/app_colors.dart';
import 'package:mobilecv/contants/contant_value/cv_variables.dart';
import 'package:mobilecv/contants/contant_value/spacers.dart';
import 'package:mobilecv/contants/widgets/custom_bullet_text.dart';
import 'package:mobilecv/contants/widgets/custom_circular_image.dart';
import 'package:mobilecv/contants/widgets/custom_divider.dart';
import 'package:mobilecv/contants/widgets/custom_header.dart';
import 'package:mobilecv/contants/widgets/custom_sub_header.dart';
import 'package:mobilecv/contants/widgets/custom_sub_text.dart';
import 'package:mobilecv/contants/widgets/custom_sub_text_bold.dart';
import 'package:mobilecv/screens/edit_screen.dart';

class CvHomeScreen extends StatelessWidget {
  static const homeScreen = '/';
  const CvHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            Navigator.pushReplacementNamed(context, EditScreen.editScreen),
        splashColor: AppColors.backgroundColorGrey,
        backgroundColor: AppColors.appColorBlack,
        child: const Icon(
          Icons.edit,
          color: AppColors.appColorWhite,
        ),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: AppColors.backgroundColorGrey,
              child: appPadding(
                  theChild: SingleChildScrollView(
                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                    const CustomCirclerImage(),
                    LargeHeaderText(
                      theText: theNameList[theFirstName].toString().toUpperCase(),
                    ),
                    LargeHeaderText(
                      theText: theNameList[theLastName].toString().toUpperCase(),
                    ),
                    CustomSubHeader(theText: theContactList[theJobTitle].toString().toUpperCase()),
                    kSpacerHeight25,
                  
                    // Contact Section
                    const CustomSubHeader(
                      theText: theHeaderContact,
                    ),
                    const CustomDivider(),
                    kSpacerHeight10,
                    CustomIconTextRow(
                        theIcon: const CustomIcon(
                          theIcon: Icons.local_phone_rounded,
                        ),
                        theText: theContactList[thePhoneNumber]),
                  
                    CustomIconTextRow(
                        theIcon: const CustomIcon(theIcon: Icons.email_rounded),
                        theText: theContactList[theEmail]),
                    CustomIconTextRow(
                        theIcon:
                            const CustomIcon(theIcon: Icons.location_on_rounded),
                        theText:
                            '${theContactList[theCountry]} ${theContactList[theRegion]} ${theContactList[thePostalCode]}'),
                    CustomIconTextRow(
                        theIcon: customImageIcon(theimage: theGithubIcon),
                        theText: theContactList[theGithubUsername]),
                    CustomIconTextRow(
                        theIcon: customImageIcon(theimage: theSlackIcon),
                        theText: theContactList[theSlackUsername]),
                    kSpacerHeight20,
                  
                    // Skill Section
                    const CustomSubHeader(theText: theHeaderSkills),
                    const CustomDivider(),
                    kSpacerHeight10,
                    for (String thetext in skillsAquired)
                      CustomIconTextRow(
                          theIcon: const Icon(
                            Icons.circle_rounded,
                            size: 0.5,
                          ),
                          theText: thetext),
                  
                    // Languages Section
                    kSpacerHeight20,
                    const CustomSubHeader(theText: theHeaderLanguage),
                    const CustomDivider(),
                    CustomIconTextRow(
                        theIcon: const Icon(
                          Icons.circle_rounded,
                          size: 2,
                        ),
                        theText: '${languages[0]} - ${languages[1]}')
                                  ],
                                ),
                  )),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.white,
              child: appPadding(
                  theChild: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomSubHeader(theText: theCareerHeader),
                    const CustomDivider(
                        theColor: AppColors.backgroundColorGrey),
                    CustomSubText(theText: theCareerObjective),
                    kSpacerHeight20,

                    //
                    const CustomSubHeader(theText: theExperienceHeader),
                    const CustomDivider(
                      theColor: AppColors.backgroundColorGrey,
                    ),
                    CustomSubText(
                        theText:
                            '${theExperienceDate[0]} - ${theExperienceDate[1]}'),
                    CustomSubTextBold(theText: theJobTitle),
                    kSpacerHeight15,
                    for (String thetext in theExperience)
                      CustomIconTextRow(
                          theIcon: const Icon(
                            Icons.circle_rounded,
                            size: 0.5,
                          ),
                          theText: thetext),

                    // Higer Education
                    kSpacerHeight15,
                    const CustomSubHeader(theText: theEducationHeader),
                    const CustomDivider(
                        theColor: AppColors.backgroundColorGrey),

                    CustomSubText(
                        theText: '${theEducational[yearOfGraduation]}'),
                    CustomSubTextBold(theText: '${theEducational[theDegree]}'),
                    CustomSubTextBold(
                        theText: '${theEducational[fieldOfStudy]}'),
                    CustomSubText(theText: '${theEducational[institute]}'),

                    // Secondary / High school Education
                    kSpacerHeight20,
                    CustomSubText(
                        theText: '${theEducationalCollege[yearOfGraduation]}'),
                    CustomSubTextBold(
                        theText: '${theEducationalCollege[theDegree]}'),
                    CustomSubText(
                        theText: '${theEducationalCollege[institute]}'),
                    kSpacerHeight20,

                    // Certifications
                    const CustomSubHeader(theText: theCertificateHeader),
                    const CustomDivider(
                        theColor: AppColors.backgroundColorGrey),
                    for (String theText in theCertifications)
                      CustomIconTextRow(
                          theIcon: const Icon(
                            Icons.circle_rounded,
                            size: 0.5,
                          ),
                          theText: theText),
                    kSpacerHeight20,

                    // REFERENCE
                    const CustomSubHeader(theText: theRefereesHeader),
                    const CustomDivider(
                        theColor: AppColors.backgroundColorGrey),
                    for (String theText in theReferences)
                      CustomSubTextBold(theText: theText),
                    kSpacerHeight30,
                  ],
                ),
              )),
            ),
          ),
        ],
      ),
    );
  }

//

  Image customImageIcon({required String theimage}) {
    return Image.asset(
      theimage,
      height: 15,
      width: 15,
    );
  }

  Padding appPadding({required Widget theChild}) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 70,
        left: 10,
        right: 10,
        bottom: 40,
      ),
      child: theChild,
    );
  }
}

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    Key? key,
    required this.theIcon,
  }) : super(key: key);
  final IconData theIcon;

  @override
  Widget build(BuildContext context) {
    return Icon(
      theIcon,
      size: 15,
      color: AppColors.appColorWhite,
    );
  }
}
