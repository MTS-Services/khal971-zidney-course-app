import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zidney/utils/app_colors.dart';
import 'package:zidney/utils/app_style.dart';
import 'package:zidney/utils/asset_path.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: AppStyles.paddingSymmetricXL,
            child: Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: AppStyles.screenHeightPercentage(context, 0.12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Color(0xFFF1EBF4),
                      ),
                      child: SvgPicture.asset(
                        AssetPath.vectorSmallBackground,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50,top: 27),
                      child: Row(
                        children: [

                          SvgPicture.asset(AssetPath.vector),

                          const SizedBox(
                            width: 20,
                          ),
                          Column(children: [
                            Text('Zidney Premium',style: TextStyle(fontSize: AppStyles.fontXL,fontWeight: AppStyles.weightMedium,color: AppColors.secondaryColor),),
                            Row(
                              children: [
                                Text("Unlimited Attempts",style: TextStyle(fontSize: AppStyles.fontM,fontWeight: AppStyles.weightMedium,color: AppColors.blackColor),),
                                const SizedBox(
                                  width: 4,
                                ),
                                SvgPicture.asset(AssetPath.vectorInfinity),
                              ],
                            )

                          ]),
                        ],
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 8),
                Text(
                  'Last practiced chapter',
                  style: TextStyle(
                    fontSize: AppStyles.fontL,
                    fontWeight: AppStyles.weightBold,
                  ),
                ),
                Row(
                  children: [
                    Stack(
                      children: [
                        Card(
                          child: Container(
                            height: AppStyles.screenHeightPercentage(
                              context,
                              0.361,
                            ),
                            width: AppStyles.screenWidthPercentage(
                              context,
                              0.5133,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(7),
                              boxShadow: [
                                BoxShadow(
                                  color: AppColors.primaryShadow,
                                  offset: const Offset(0, 10),
                                ),
                              ],
                            ),
                            child: SvgPicture.asset(
                              AssetPath.vectorBackground,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          child: Padding(
                            padding: AppStyles.paddingSymmetricXL,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SvgPicture.asset(AssetPath.arithMaticLogo),
                                const SizedBox(height: 8),
                                Text(
                                  'Advanced Math',
                                  style: TextStyle(
                                    fontSize: AppStyles.fontXL,
                                    fontWeight: AppStyles.weightRegular,
                                    color: AppColors.chocolate,
                                  ),
                                ),
                                Text(
                                  'Chapter 1',
                                  style: TextStyle(
                                    fontSize: AppStyles.fontXL,
                                    fontWeight: AppStyles.weightRegular,
                                    color: AppColors.chocolate,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  'Total question 30',
                                  style: TextStyle(
                                    color: AppColors.chocolate,
                                    fontWeight: AppStyles.weightRegular,
                                    fontSize: AppStyles.fontM,
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  'You are on:7th',
                                  style: TextStyle(
                                    color: AppColors.chocolate,
                                    fontWeight: AppStyles.weightRegular,
                                    fontSize: AppStyles.fontM,
                                  ),
                                ),
                                






                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
