import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zidney/utils/app_colors.dart';
import 'package:zidney/utils/asset_path.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.showTitle = false,
    this.title = '',
    this.classTitle = '',
    this.showAction = true,
    this.showActionIcon = false,
  });

  final bool showTitle;
  final String title;
  final String classTitle;
  final bool showAction;
  final bool showActionIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        leadingWidth: 26,
        automaticallyImplyLeading: false,
        title:
            showTitle
                ? Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white,
                        border: Border.all(
                          color: AppColors.primaryColor,
                          width: 2,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          classTitle,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
                : SizedBox.fromSize(),
        actions:
            showAction
                ? [
                  showActionIcon
                      ? Image.asset('assets/images/bookmark_icon.png', scale: 3)
                      : InkWell(
                        onTap: () {},
                        child: Row(
                          spacing: 10,
                          children: [
                            Text(
                              'Premium',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w900,
                                color: AppColors.secondaryColor,
                              ),
                            ),
                            SvgPicture.asset(
                              AssetPath.vector,
                              height: 23,
                              width: 23,
                            ),
                          ],
                        ),
                      ),
                ]
                : [],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
