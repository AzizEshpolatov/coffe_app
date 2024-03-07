import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/data/models/data_repository/all_products.dart';
import 'package:task/screens/cart_screen/cart_screen.dart';
import 'package:task/utils/app_icons/app_icons.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../utils/size/app_size.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeIndex = 0;
  bool isSelected = true;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  selected() async {
    isSelected = await AdaptiveTheme.getThemeMode() == AdaptiveThemeMode.dark;
    setState(() {});
  }

  @override
  void initState() {
    selected();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;

    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
      ),
      child: Scaffold(
        key: scaffoldKey,
        drawerEnableOpenDragGesture: false,
        drawer: Drawer(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 20.getW(), vertical: 30.getH()),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Theme",
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            fontSize: 16.w,
                          ),
                    ),
                    const Spacer(),
                    Switch(
                      value: isSelected,
                      onChanged: (v) {
                        if (v) {
                          AdaptiveTheme.of(context).setDark();
                        } else {
                          AdaptiveTheme.of(context).setLight();
                        }
                        isSelected = v;
                      },
                      activeTrackColor: isSelected ? Colors.blue : Colors.grey,
                      inactiveTrackColor: isSelected
                          ? Colors.blue.withOpacity(0.5)
                          : Colors.grey.withOpacity(0.5),
                      activeColor: isSelected ? Colors.white : Colors.black,
                      inactiveThumbColor:
                          isSelected ? Colors.white : Colors.black,
                    ),
                  ],
                ),
                SizedBox(height: 15.getH()),
                // TODO til ozgarishi qowiladi!!!
              ],
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 28.getW()),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 48.getH()),
              Row(
                children: [
                  ZoomTapAnimation(
                    onTap: () {
                      scaffoldKey.currentState!.openDrawer();
                    },
                    child: SvgPicture.asset(
                      AppIcons.menu,
                      width: 32.getW(),
                      colorFilter: ColorFilter.mode(
                        isSelected == true ? Colors.white : Colors.black,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  const Spacer(),
                  ZoomTapAnimation(
                    onTap: () {},
                    child: SvgPicture.asset(
                      AppIcons.search,
                      width: 24.getW(),
                      colorFilter: ColorFilter.mode(
                        isSelected == true ? Colors.white : Colors.black,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  SizedBox(width: 24.getW()),
                  ZoomTapAnimation(
                    onTap: () {},
                    child: SvgPicture.asset(
                      AppIcons.favorite,
                      width: 24.getW(),
                      colorFilter: ColorFilter.mode(
                        isSelected == true ? Colors.white : Colors.black,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ],
              ),
              // TODO FAVORITE LISTI CHIQARILIWI KERAK!
              // SizedBox(height: 24.getH()),
              // Text(
              //   "Your Favorites",
              //   style: TextStyle(
              //     color: Colors.white,
              //     fontSize: 30.sp,
              //   ),
              // ),
              SizedBox(height: 24.getH()),
              Text(
                "Popular Now",
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontSize: 24.w,
                    ),
              ),
              SizedBox(height: 24.getH()),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                      productBox.length,
                      (index) {
                        return ZoomTapAnimation(
                          onTap: () {
                            activeIndex = index;
                            setState(() {

                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.r),
                              border: Border.all(
                                width: 1.r,
                                color: activeIndex == index
                                    ? Colors.grey
                                    : Colors.transparent,
                              ),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.getW(), vertical: 8.getH()),
                            child: Text(
                              "${productBox[index]}",
                              style: TextStyle(
                                color: activeIndex == index
                                    ? Theme.of(context)
                                        .colorScheme
                                        .tertiaryContainer
                                    : Theme.of(context)
                                        .colorScheme
                                        .tertiaryContainer
                                        .withOpacity(.7),
                                fontSize: 16.w,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15.getW(),
                  mainAxisSpacing: 15.getH(),
                  childAspectRatio: 0.72,
                  children: List.generate(
                    allProducts.length,
                    (index) {
                      return ZoomTapAnimation(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return CartScreen(
                                  coffeeModel: allProducts[index],
                                );
                              },
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 232.getH(),
                                width: 178.getW(),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                ),
                                child: activeIndex == 0
                                    ? ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.r),
                                        child: Image.asset(
                                          allProducts[index].imageUrl,
                                          fit: BoxFit.cover,
                                        ),
                                      )
                                    : const SizedBox(),
                              ),
                              SizedBox(height: 10.getH()),
                              Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 10.getW()),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      allProducts[index].name,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                            fontSize: 16.getW(),
                                          ),
                                    ),
                                    SizedBox(height: 5.getH()),
                                    Text(
                                      allProducts[index].subtitle,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall!
                                          .copyWith(
                                            fontSize: 16.getW(),
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List productBox = [
  "All",
  "Mocha",
  "Latte",
  "Cappuchino",
  "Espresso",
];
